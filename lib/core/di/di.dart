import 'package:bluesoft_bank/bloc/transaction_bloc/transaction_bloc.dart';
import 'package:bluesoft_bank/repository/implementation/login_repository_impl.dart';
import 'package:bluesoft_bank/repository/implementation/account_repository_impl.dart';
import 'package:bluesoft_bank/repository/implementation/transaction_repository_impl.dart';
import 'package:bluesoft_bank/repository/interface/i_login_repository.dart';
import 'package:bluesoft_bank/repository/interface/i_account_repository.dart';
import 'package:bluesoft_bank/repository/interface/i_transaction_repository.dart';
import 'package:bluesoft_bank/utils/navigation/navigation.dart';
import 'package:bluesoft_bank/bloc/login_bloc/login_bloc.dart';
import 'package:bluesoft_bank/bloc/home_bloc/home_bloc.dart';
import 'package:bluesoft_bank/core/di/di.config.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt getIt = GetIt.instance;

@InjectableInit(generateForDir: ['lib/di'])
Future<GetIt> configureDependencies() async {
  getIt.registerSingleton<Navigation>(Navigation());

  /// Shared Prefereces --------------------------------------------------------------------
  final prefs = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(prefs);

  /// Login --------------------------------------------------------------------
  getIt.registerSingleton<ILoginRepository>(LoginRepositoryImpl());
  getIt.registerSingleton<LoginBloc>(LoginBloc(getIt<ILoginRepository>()));

  /// --------------------------------------------------------------------------

  /// Home ---------------------------------------------------------------------
  getIt.registerSingleton<IAccountRepository>(AccountRepositoryImpl());
  getIt.registerSingleton<HomeBloc>(HomeBloc(getIt<IAccountRepository>()));

  /// --------------------------------------------------------------------------

  /// Transaction --------------------------------------------------------------
  getIt.registerSingleton<ITransactionRepository>(TransactionRepositoryImpl());
  getIt.registerSingleton<TransactionBloc>(
      TransactionBloc(getIt<ITransactionRepository>()));

  /// --------------------------------------------------------------------------
  return getIt.init();
}

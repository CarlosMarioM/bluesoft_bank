import 'package:bluesoft_bank/framework/repository/implementation/login_repository_impl.dart';
import 'package:bluesoft_bank/framework/repository/implementation/home_repository_impl.dart';
import 'package:bluesoft_bank/framework/repository/interface/i_login_repository.dart';
import 'package:bluesoft_bank/framework/repository/interface/i_home_repository.dart';
import 'package:bluesoft_bank/utils/navigation/navigation.dart';
import 'package:bluesoft_bank/bloc/login_bloc/login_bloc.dart';
import 'package:bluesoft_bank/bloc/home_bloc/home_bloc.dart';
import 'package:bluesoft_bank/core/di/di.config.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

@InjectableInit(generateForDir: ['lib/di'])
GetIt configureDependencies() {
  getIt.registerSingleton<Navigation>(Navigation());

  /// Login --------------------------------------------------------------------
  getIt.registerSingleton<ILoginRepository>(LoginRepositoryImpl());
  getIt.registerSingleton<LoginBloc>(LoginBloc(getIt<ILoginRepository>()));

  /// --------------------------------------------------------------------------

  /// Home ---------------------------------------------------------------------
  getIt.registerSingleton<IHomeRepository>(HomeRepositoryImpl());
  getIt.registerSingleton<HomeBloc>(HomeBloc(getIt<IHomeRepository>()));

  /// --------------------------------------------------------------------------
  return getIt.init();
}

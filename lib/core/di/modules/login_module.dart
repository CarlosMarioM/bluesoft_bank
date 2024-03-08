import 'package:bluesoft_bank/bloc/login_bloc/login_bloc.dart';
import 'package:bluesoft_bank/repository/implementation/login_repository_impl.dart';
import 'package:bluesoft_bank/repository/interface/i_login_repository.dart';
import 'package:injectable/injectable.dart';

abstract class LoginModule {
  @Singleton()
  LoginBloc loginBloc(ILoginRepository loginRepository) =>
      LoginBloc(loginRepository);

  @Singleton()
  ILoginRepository loginRepository() => LoginRepositoryImpl();
}

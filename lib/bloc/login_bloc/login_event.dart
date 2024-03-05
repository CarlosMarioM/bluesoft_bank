part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login(String user, String password) = _Login;
  const factory LoginEvent.register(String user, String password) = _Register;
}

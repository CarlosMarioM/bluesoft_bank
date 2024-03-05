part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool isLoading,
    UiEvent<Client>? navigateToHomePage,
    UiEvent<Nothing>? navigateToRegister,
    UiEvent<Nothing>? error,
  }) = _LoginState;
}

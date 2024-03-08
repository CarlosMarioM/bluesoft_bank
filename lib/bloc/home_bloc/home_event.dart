part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initial(String clientId) = _Initial;
  const factory HomeEvent.navigateTransactions(List<Account> clientId) =
      _NavigateTransactions;
  const factory HomeEvent.logout() = _Logout;
}

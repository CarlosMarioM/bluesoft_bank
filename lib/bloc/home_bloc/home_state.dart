part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    num? totalBalance,
    UiEvent<List<Account>>? accounts,
    UiEvent<Nothing>? error,
  }) = _HomeState;
}

part of 'transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    @Default(false) bool isLoading,
    @Default([]) List<Transaction> transactions,
    UiEvent<Nothing>? navigateBack,
    UiEvent<Nothing>? error,
  }) = _TransactionState;
}

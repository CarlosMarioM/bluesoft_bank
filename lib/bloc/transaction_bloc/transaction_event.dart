part of 'transaction_bloc.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.started(List<Account> accounts) = _Started;

  const factory TransactionEvent.navigateBack() = _NavigateBack;
  const factory TransactionEvent.navigateWithdrawal() = _NavigateWithdrawal;
  const factory TransactionEvent.navigateConsigment() = _NavigateConsigment;
}

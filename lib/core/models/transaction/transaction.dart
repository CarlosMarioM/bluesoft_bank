import 'package:bluesoft_bank/core/enums/transaction_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required String transactionId,
    required TransactionType transactionType,
    required double value,
    required DateTime date,
    required String accountId,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}

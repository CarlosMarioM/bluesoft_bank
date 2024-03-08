import 'package:bluesoft_bank/core/models/transaction/transaction.dart';
import 'package:bluesoft_bank/utils/results/failure_entity/failure_entity.dart';
import 'package:bluesoft_bank/utils/results/results.dart';

abstract class ITransactionRepository {
  Future<Result<List<Transaction>, FailureEntity>> fetchTransactions(
      String acountId);

  Future newTransaction(Transaction newTransaction);
}

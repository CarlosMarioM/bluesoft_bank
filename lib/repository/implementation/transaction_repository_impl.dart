import 'dart:convert';

import 'package:bluesoft_bank/core/models/transaction/transaction.dart';
import 'package:bluesoft_bank/repository/interface/i_transaction_repository.dart';
import 'package:bluesoft_bank/utils/results/failure_entity/failure_entity.dart';
import 'package:bluesoft_bank/utils/results/results.dart';
import 'package:flutter/services.dart';

class TransactionRepositoryImpl implements ITransactionRepository {
  @override
  Future<Result<List<Transaction>, FailureEntity>> fetchTransactions(
      String accountId) async {
    String response = await rootBundle.loadString("assets/transactions.json");

    /// Simulating DB and Call
    List<dynamic> result = json.decode(response);

    List<Transaction> db = result.map((e) => Transaction.fromJson(e)).toList();
    List<Transaction> transactions = [];

    transactions
        .addAll(db.where((element) => element.accountId == accountId).toList());

    await Future.delayed(const Duration(milliseconds: 1500));

    return transactions.isNotEmpty
        ? Success(transactions)
        : const Failure(FailureEntity.fail());
  }
  
  @override
  Future newTransaction(Transaction newTransaction)async{
    // TODO: implement newTransaction
    throw UnimplementedError();
  }
}

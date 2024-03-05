import 'dart:convert';

import 'package:bluesoft_bank/core/models/account/account.dart';
import 'package:bluesoft_bank/framework/repository/interface/i_home_repository.dart';
import 'package:bluesoft_bank/utils/results/failure_entity/failure_entity.dart';
import 'package:bluesoft_bank/utils/results/results.dart';
import 'package:flutter/services.dart';

class HomeRepositoryImpl implements IHomeRepository {
  @override
  Future<Result<List<Account>, FailureEntity>> fetchAccounts(
      String userId) async {
    String response = await rootBundle.loadString("assets/accounts.json");

    /// Simulating DB and Call
    List<dynamic> result = json.decode(response);

    List<Account> db = result.map((e) => Account.fromJson(e)).toList();
    List<Account> accounts = [];

    accounts.addAll(db.where((element) => element.clientId == userId).toList());

    /// End Simulation

    await Future.delayed(const Duration(seconds: 3));

    return accounts.isNotEmpty
        ? Success(accounts)
        : const Failure(FailureEntity.fail());
  }
}

import 'dart:convert';

import 'package:bluesoft_bank/core/models/client/client.dart';
import 'package:bluesoft_bank/repository/interface/i_login_repository.dart';
import 'package:bluesoft_bank/utils/results/failure_entity/failure_entity.dart';
import 'package:bluesoft_bank/utils/results/results.dart';
import 'package:flutter/services.dart';

class LoginRepositoryImpl implements ILoginRepository {
  @override
  Future<Result<Client, FailureEntity>> login(
      String user, String password) async {
    String response = await rootBundle.loadString("assets/clients.json");

    /// Simulating DB and Call
    List<dynamic> result = json.decode(response);

    List<Client> db = result.map((e) => Client.fromJson(e)).toList();

    /// End Simulation
    Client? client = db.where((element) => element.name == user).firstOrNull;

    await Future.delayed(const Duration(seconds: 3));

    return client != null
        ? Success(client)
        : const Failure(FailureEntity.fail());
  }

  @override
  Future<Result<void, FailureEntity>> logout(
      String user, String password) async {
    return const Success(null);
  }
}

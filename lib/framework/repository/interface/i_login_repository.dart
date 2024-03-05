import 'package:bluesoft_bank/core/models/client/client.dart';
import 'package:bluesoft_bank/utils/results/failure_entity/failure_entity.dart';
import 'package:bluesoft_bank/utils/results/results.dart';

abstract class ILoginRepository {
  Future<Result<Client, FailureEntity>> login(String user, String password);
  Future<Result<void, FailureEntity>> logout(String user, String password);
}

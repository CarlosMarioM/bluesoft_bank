import 'package:bluesoft_bank/core/models/account/account.dart';
import 'package:bluesoft_bank/utils/results/failure_entity/failure_entity.dart';
import 'package:bluesoft_bank/utils/results/results.dart';

abstract class IHomeRepository {
  Future<Result<List<Account>, FailureEntity>> fetchAccounts(String userId);
}

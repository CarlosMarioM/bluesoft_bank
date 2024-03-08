import 'package:bluesoft_bank/core/enums/account_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@Freezed(toJson: true)
class Account with _$Account {
  static const _kAccountMinimum = 1000;
  const factory Account({
    required String id,
    required AccountType type,
    required num balance,
    required String clientId,
  }) = _Account;

  static num getCurrentBalance(List<Account> accounts) {
    final balances = accounts.map((account) => account.balance).toList();
    num total = 0;
    for (num balance in balances) {
      total += balance;
    }
    return total;
  }

  static bool isBelowLimit(List<Account> accounts) =>
      getCurrentBalance(accounts) < _kAccountMinimum ? true : false;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

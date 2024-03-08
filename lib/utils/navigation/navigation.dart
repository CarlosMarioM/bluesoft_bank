import 'package:bluesoft_bank/core/models/account/account.dart';
import 'package:bluesoft_bank/utils/extension/widget/widget_extension.dart';
import 'package:bluesoft_bank/views/home/home_screen.dart';
import 'package:bluesoft_bank/core/models/client/client.dart';
import 'package:bluesoft_bank/views/login/login_screen.dart';
import 'package:bluesoft_bank/views/transaction/transaction_screen.dart';
import 'package:bluesoft_bank/views/transaction/withdrawal/withdrawal_screen.dart';

import 'package:flutter/material.dart';

class Navigation {
  Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case LoginScreen.route:
        return const LoginScreen().buildPageRoute();
      case HomeScreen.route:
        Client client = arguments as Client;
        return HomeScreen(
          client: client,
        ).buildPageRoute();
      case TransactionScreen.route:
        return TransactionScreen(
          accounts: arguments as List<Account>,
        ).buildPageRoute();
      case WithdrawalScreen.route:
        return const WithdrawalScreen().buildPageRoute();
      default:
        return const Scaffold(
          body: Center(
            child: SizedBox(
              child: Text("Wrong route"),
            ),
          ),
        ).buildPageRoute();
    }
  }
}

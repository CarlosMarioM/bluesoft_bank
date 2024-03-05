import 'package:bluesoft_bank/utils/extension/widget/widget_extension.dart';
import 'package:bluesoft_bank/views/home/widgets/home_screen.dart';
import 'package:bluesoft_bank/core/models/client/client.dart';
import 'package:bluesoft_bank/views/login/login_screen.dart';

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

import 'package:bluesoft_bank/utils/extension/widget/widget_extension.dart';
import 'package:bluesoft_bank/views/login/login_page.dart';
import 'package:flutter/material.dart';

class Navigation {
  Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case LoginPage.route:
        return const LoginPage().buildPageRoute();
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

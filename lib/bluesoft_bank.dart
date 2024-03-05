import 'package:bluesoft_bank/core/di/di.dart';
import 'package:bluesoft_bank/utils/navigation/navigation.dart';
import 'package:bluesoft_bank/views/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'ui/theme/theme.dart' as bs_theme;

class BluesoftBank extends StatelessWidget {
  const BluesoftBank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginPage.route,
      theme: bs_theme.Theme.data,
      onGenerateRoute: getIt<Navigation>().generateRoute,
    );
  }
}

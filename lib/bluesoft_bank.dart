import 'package:bluesoft_bank/core/di/di.dart';
import 'package:bluesoft_bank/utils/navigation/navigation.dart';
import 'ui/theme/theme.dart';
import 'package:flutter/material.dart';

import 'views/login/login_screen.dart';

class BluesoftBank extends StatelessWidget {
  const BluesoftBank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.route,
      themeMode: ThemeMode.dark,
      theme: Theming.data,
      onGenerateRoute: getIt<Navigation>().generateRoute,
    );
  }
}

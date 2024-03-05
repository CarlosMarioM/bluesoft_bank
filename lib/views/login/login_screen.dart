import 'package:bluesoft_bank/bloc/login_bloc/login_bloc.dart';
import 'package:bluesoft_bank/core/di/di.dart';
import 'package:bluesoft_bank/core/models/client/client.dart';
import 'package:bluesoft_bank/utils/extension/navigation/navigation_extension.dart';
import 'package:bluesoft_bank/views/home/home_page.dart';
import 'package:bluesoft_bank/views/home/widgets/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const route = "Login Screen";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LoginBloc>(),
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.error?.consume() != null) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
              "Those are not the right credentials",
              style: Theme.of(context).textTheme.labelSmall,
            )));
          }
          if (state.navigateToHomePage != null) {
            final Client client = state.navigateToHomePage!.consume()!;
            context.pushReplacementNamed(
                routeName: HomeScreen.route, arguments: client);
          }
        },
        child: const LoginPage(),
      ),
    );
  }
}

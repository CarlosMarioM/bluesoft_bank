import 'package:bluesoft_bank/ui/form_fields/password_form_field.dart';
import 'package:bluesoft_bank/ui/scaffolds/background_scaffold.dart';
import 'package:bluesoft_bank/ui/form_fields/email_form_field.dart';
import 'package:bluesoft_bank/ui/buttons/secondary_button.dart';
import 'package:bluesoft_bank/bloc/login_bloc/login_bloc.dart';
import 'package:bluesoft_bank/ui/buttons/primary_button.dart';
import 'package:bluesoft_bank/ui/appbar/appbar_builder.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController userController, passwordController;

  @override
  void initState() {
    super.initState();
    userController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    userController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return BackgroundScaffold(
          isLoading: state.isLoading,
          appBar: AppbarBuilder.clean(
            actions: [],
            title: "Bluesoft Bank",
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LoginScreen.route,
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 42),
              EmailTextFormField(controller: userController),
              const SizedBox(height: 16),
              PasswordTextFormField(controller: passwordController),
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: PrimaryButton(
                  onPressed: () {
                    context.read<LoginBloc>().add(LoginEvent.login(
                        userController.text, passwordController.text));
                  },
                  text: "LOGIN",
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.bottomCenter,
                child: SecondaryButton(
                  onPressed: () {},
                  text: "REGISTER",
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:bluesoft_bank/ui/appbar/appbar_builder.dart';
import 'package:bluesoft_bank/ui/buttons/primary_button.dart';
import 'package:bluesoft_bank/ui/buttons/secondary_button.dart';
import 'package:bluesoft_bank/ui/form_fields/email_form_field.dart';
import 'package:bluesoft_bank/ui/form_fields/password_form_field.dart';
import 'package:bluesoft_bank/ui/scaffolds/background_scaffold.dart';
import 'package:bluesoft_bank/utils/extension/navigation/navigation_extension.dart';
import 'package:bluesoft_bank/views/home/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const route = "Login Page";
  @override
  Widget build(BuildContext context) {
    return BackgroundScaffold(
      appBar: AppbarBuilder.clean(
        actions: [],
        title: "Bluesoft Bank",
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            route,
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 42),
          const EmailTextFormField(),
          const SizedBox(height: 16),
          const PasswordTextFormField(),
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: PrimaryButton(
              onPressed: () {
                context.pushReplacementNamed(HomePage.route);
              },
              text: "LOGIN",
            ),
          ),
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.bottomCenter,
            child: SecondaryButton(
              onPressed: () {
                context.pushReplacementNamed(HomePage.route);
              },
              text: "REGISTER",
            ),
          ),
        ],
      ),
    );
  }
}

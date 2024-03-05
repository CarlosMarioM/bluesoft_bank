import 'package:bluesoft_bank/ui/appbar/appbar_builder.dart';
import 'package:bluesoft_bank/ui/buttons/primary_button.dart';
import 'package:bluesoft_bank/ui/buttons/secondary_button.dart';
import 'package:bluesoft_bank/ui/cards/neumorphism_card.dart';
import 'package:bluesoft_bank/ui/form_fields/password_form_field.dart';
import 'package:bluesoft_bank/ui/scaffolds/background_scaffold.dart';
import 'package:bluesoft_bank/ui/scaffolds/home_scaffold.dart';
import 'package:bluesoft_bank/utils/extension/navigation/navigation_extension.dart';
import 'package:flutter/material.dart';

import '../../ui/form_fields/email_form_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const route = "Home Page";
  @override
  Widget build(BuildContext context) {
    return HomeScaffold(
      appBar: AppbarBuilder.home(
        actions: [],
        title: "Home",
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome Back",
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.justify,
          ),
          const Divider(),
          const SizedBox(height: 16),
          NeumorphismCard(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Current Balance:",
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "\$ 2,500.00", //TODO remove hardcoded value
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          const PasswordTextFormField(),
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: PrimaryButton(
              onPressed: () {
                context.pushReplacementNamed(HomePage.route);
              },
              text: "WITHDRAW",
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

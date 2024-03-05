import 'package:bluesoft_bank/utils/extension/navigation/navigation_extension.dart';
import 'package:bluesoft_bank/ui/form_fields/password_form_field.dart';
import 'package:bluesoft_bank/views/home/widgets/balance_card.dart';
import 'package:bluesoft_bank/ui/scaffolds/home_scaffold.dart';
import 'package:bluesoft_bank/ui/buttons/primary_button.dart';
import 'package:bluesoft_bank/ui/appbar/appbar_builder.dart';
import 'package:flutter/material.dart';

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
          const BalanceCard(),
          const SizedBox(height: 16),
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: PrimaryButton(
              onPressed: () {},
              text: "WITHDRAW",
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

import 'package:bluesoft_bank/ui/appbar/appbar_builder.dart';
import 'package:bluesoft_bank/ui/scaffolds/background_scaffold.dart';
import 'package:bluesoft_bank/views/transaction/withdrawal/withdrawal_screen.dart';
import 'package:flutter/material.dart';

class WithdrawalPage extends StatelessWidget {
  const WithdrawalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundScaffold(
        appBar: AppbarBuilder.clean(actions: [], title: WithdrawalScreen.route),
        isLoading: false,
        child: const Column());
  }
}

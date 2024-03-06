import 'package:bluesoft_bank/bloc/home_bloc/home_bloc.dart';
import 'package:bluesoft_bank/views/home/home_screen.dart';
import 'package:bluesoft_bank/views/home/widgets/balance_card.dart';
import 'package:bluesoft_bank/ui/scaffolds/home_scaffold.dart';
import 'package:bluesoft_bank/ui/buttons/primary_button.dart';
import 'package:bluesoft_bank/ui/appbar/appbar_builder.dart';
import 'package:bluesoft_bank/views/home/widgets/report_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/accounts_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return HomeScaffold(
          isLoading: state.isLoading,
          appBar: AppbarBuilder.home(
            actions: [],
            title: HomeScreen.route,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Wellcome Back!",
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.justify,
                  ),
                  const CircleAvatar(
                    maxRadius: 24,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 36,
                    ),
                  )
                ],
              ),
              const Divider(),
              BalanceCard(totalBalance: state.totalBalance ?? 0),
              const SizedBox(height: 16),
              Flexible(
                  child: AccountsCard(accounts: state.accounts?.peek() ?? [])),
              const SizedBox(height: 16),
              const Flexible(child: ReportCard()),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.bottomCenter,
                child: PrimaryButton(
                  isEnabled: !state.isLoading,
                  onPressed: () {},
                  text: "WITHDRAW",
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }
}

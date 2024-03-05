import 'package:bluesoft_bank/bloc/home_bloc/home_bloc.dart';
import 'package:bluesoft_bank/views/home/widgets/balance_card.dart';
import 'package:bluesoft_bank/ui/scaffolds/home_scaffold.dart';
import 'package:bluesoft_bank/ui/buttons/primary_button.dart';
import 'package:bluesoft_bank/ui/appbar/appbar_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              BalanceCard(totalBalance: state.totalBalance ?? 0),
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
      },
    );
  }
}

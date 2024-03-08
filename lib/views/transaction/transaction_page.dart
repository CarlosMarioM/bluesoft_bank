import 'package:bluesoft_bank/bloc/transaction_bloc/transaction_bloc.dart';
import 'package:bluesoft_bank/core/enums/transaction_type.dart';
import 'package:bluesoft_bank/ui/buttons/circle_button.dart';
import 'package:bluesoft_bank/ui/buttons/primary_button.dart';
import 'package:bluesoft_bank/ui/cards/neumorphism_card.dart';
import 'package:bluesoft_bank/ui/theme/theme.dart';
import 'package:bluesoft_bank/views/transaction/transaction_screen.dart';
import 'package:bluesoft_bank/ui/scaffolds/background_scaffold.dart';
import 'package:bluesoft_bank/ui/appbar/appbar_builder.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DateFormat df = DateFormat.MMMMEEEEd();
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        return BackgroundScaffold(
          isLoading: state.isLoading,
          appBar: AppbarBuilder.clean(
              actions: [],
              title: TransactionScreen.route,
              navigateBack: () {
                context.read<TransactionBloc>().add(
                      const TransactionEvent.navigateBack(),
                    );
              }),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Transactions",
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 24),
              Expanded(
                child: NeumorphismCard(
                  child: ListView.builder(
                    itemCount: state.transactions.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "# ${state.transactions[index].id}",
                            style: context
                                .theme()
                                .textTheme
                                .titleMedium!
                                .copyWith(decoration: TextDecoration.underline),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                df
                                    .format(state.transactions[index].date)
                                    .toString(),
                                style: context.theme().textTheme.titleMedium,
                              ),
                              Text(
                                "# ${state.transactions[index].accountId}",
                                style: context.theme().textTheme.titleSmall,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                state.transactions[index].type.value,
                                style: context
                                    .theme()
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      color: state.transactions[index].type ==
                                              TransactionType.consignment
                                          ? Colors.green
                                          : Colors.red,
                                    ),
                              ),
                              Text(
                                " \$ ${state.transactions[index].value}",
                                style: context.theme().textTheme.titleSmall,
                              )
                            ],
                          ),
                          const Divider(),
                        ],
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: NeumorphismCard(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "New Transaction",
                          style: context.theme().textTheme.titleLarge,
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleButton(
                              icon: Icons.add,
                              text: TransactionType.withdrawal.value,
                              onPressed: () {},
                            ),
                            CircleButton(
                              icon: Icons.add,
                              text: TransactionType.consignment.value,
                              onPressed: () {},
                            ),
                            CircleButton(
                              icon: Icons.move_down_outlined,
                              text: "TRANSFER",
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: PrimaryButton(
                  isEnabled: !state.isLoading,
                  onPressed: () {},
                  text: "REPORTS",
                ), 
              )
            ],
          ),
        );
      },
    );
  }
}

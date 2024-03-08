import 'package:bluesoft_bank/bloc/home_bloc/home_bloc.dart';
import 'package:bluesoft_bank/core/di/di.dart';
import 'package:bluesoft_bank/core/models/client/client.dart';
import 'package:bluesoft_bank/utils/extension/navigation/navigation_extension.dart';
import 'package:bluesoft_bank/views/home/home_page.dart';
import 'package:bluesoft_bank/views/transaction/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.client});
  static const route = "Home Screen";
  final Client client;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()..add(HomeEvent.initial(client.id)),
      child: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.error?.consume() != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Something went wrong",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
            );
          }
          if (state.logout != null) {}
          if (state.navigateTransactions != null) {
            final clientId = state.navigateTransactions!.consume();
            context.pushNamed(
                routeName: TransactionScreen.route, arguments: clientId);
          }
        },
        child: HomePage(client: client),
      ),
    );
  }
}

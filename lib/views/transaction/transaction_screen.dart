import 'package:bluesoft_bank/bloc/transaction_bloc/transaction_bloc.dart';
import 'package:bluesoft_bank/core/models/account/account.dart';
import 'package:bluesoft_bank/utils/extension/navigation/navigation_extension.dart';
import 'package:bluesoft_bank/views/transaction/transaction_page.dart';
import 'package:bluesoft_bank/core/di/di.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key, required this.accounts});
  static const String route = "Transaction Screen";
  final List<Account> accounts;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<TransactionBloc>()..add(TransactionEvent.started(accounts)),
      child: BlocListener<TransactionBloc, TransactionState>(
        listener: (context, state) {
          if (state.navigateBack?.consume() != null) {
            context.pop();
          }
        },
        child: const TransactionPage(),
      ),
    );
  }
}

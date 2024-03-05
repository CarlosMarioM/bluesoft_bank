import 'package:bluesoft_bank/bloc/home_bloc/home_bloc.dart';
import 'package:bluesoft_bank/core/di/di.dart';
import 'package:bluesoft_bank/core/models/client/client.dart';
import 'package:bluesoft_bank/views/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.client});
  static const route = "Home Screen";
  final Client client;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()
        ..add(
          HomeEvent.initial(client.id),
        ),
      child: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.error?.consume() != null) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
              "Something went wrong",
              style: Theme.of(context).textTheme.labelSmall,
            )));
          }
        },
        child: const HomePage(),
      ),
    );
  }
}

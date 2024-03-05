import 'package:bluesoft_bank/ui/appbar/clean_appbar.dart';
import 'package:bluesoft_bank/ui/scaffolds/background_scaffold.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const route = "Login Page";
  @override
  Widget build(BuildContext context) {
    return BackgroundScaffold(
      appBar: AppbarBuilder.clean(
        actions: [],
        leading: const Icon(Icons.accessibility_rounded),
        title: "Login",
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Log in to continue",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 42),
          Container(
            margin: const EdgeInsets.all(16),
            child: TextFormField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            margin: const EdgeInsets.all(16),
            child: TextFormField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 48,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.viewInsetsOf(context).bottom),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Login"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

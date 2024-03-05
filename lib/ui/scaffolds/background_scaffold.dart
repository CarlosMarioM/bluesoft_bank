import 'package:flutter/material.dart';

class BackgroundScaffold extends StatelessWidget {
  const BackgroundScaffold(
      {super.key, required this.appBar, required this.child});
  final PreferredSizeWidget appBar;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!FocusScope.of(context).hasPrimaryFocus) {
          FocusScope.of(context).unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appBar,
        backgroundColor: const Color.fromARGB(225, 255, 255, 255),
        body: SafeArea(
          minimum: const EdgeInsets.all(16),
          child: child,
        ),
      ),
    );
  }
}

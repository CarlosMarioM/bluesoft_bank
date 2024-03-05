import 'package:bluesoft_bank/ui/scaffolds/home_scaffold.dart';
import 'package:flutter/material.dart';

class BackgroundScaffold extends StatelessWidget {
  const BackgroundScaffold({
    super.key,
    required this.appBar,
    required this.child,
  });
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
        backgroundColor: Colors.white,
        body: SafeArea(
          minimum: const EdgeInsets.all(8),
          child: child,
        ),
      ),
    );
  }
}



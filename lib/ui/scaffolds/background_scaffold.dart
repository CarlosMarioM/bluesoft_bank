import 'package:flutter/material.dart';

class BackgroundScaffold extends StatelessWidget {
  const BackgroundScaffold(
      {super.key,
      required this.appBar,
      required this.child,
      required this.isLoading});
  final PreferredSizeWidget appBar;
  final Widget child;
  final bool isLoading;
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
          body: Stack(
            children: [
              Visibility(
                  visible: isLoading, child: const LinearProgressIndicator()),
              SafeArea(
                minimum: const EdgeInsets.all(8),
                child: child,
              ),
            ],
          )),
    );
  }
}

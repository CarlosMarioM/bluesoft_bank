import 'package:bluesoft_bank/ui/drawers/home_drawer.dart';
import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> homeScaffoldKey = GlobalKey<ScaffoldState>();

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({
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
        key: homeScaffoldKey,
        resizeToAvoidBottomInset: false,
        endDrawer: const HomeDrawer(),
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

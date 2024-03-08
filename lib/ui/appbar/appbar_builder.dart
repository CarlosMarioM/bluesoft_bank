import 'package:bluesoft_bank/ui/scaffolds/home_scaffold.dart';
import 'package:flutter/material.dart';

class AppbarBuilder {
  static PreferredSizeWidget clean({
    required List<Widget> actions,
    required String title,
    Widget? leading,
    VoidCallback? navigateBack,
  }) {
    return AppBar(
      title: Text(
        title,
      ),
      elevation: 1,
      actions: actions,
      leadingWidth: 80,
      leading: leading ??
          InkWell(
            onTap: () => navigateBack?.call(),
            child: const Icon(Icons.arrow_back),
          ),
    );
  }

  static PreferredSizeWidget home({
    required List<Widget> actions,
    required String title,
  }) {
    return AppBar(
      title: Text(
        title,
      ),
      elevation: 1,
      actions: actions,
      leadingWidth: 80,
      leading: InkWell(
        onTap: () => homeScaffoldKey.currentState!.isEndDrawerOpen
            ? homeScaffoldKey.currentState!.closeEndDrawer()
            : homeScaffoldKey.currentState!.openEndDrawer(),
        child: const Icon(
          Icons.menu,
        ),
      ),
    );
  }
}

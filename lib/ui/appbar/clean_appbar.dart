import 'package:flutter/material.dart';

class AppbarBuilder {
  static PreferredSizeWidget clean({
    required Widget leading,
    required List<Widget> actions,
    required String title,
  }) {
    return AppBar(
        title: Text(
          title,
        ),
        actions: actions,
        leadingWidth: 80,
        leading: leading);
  }
}

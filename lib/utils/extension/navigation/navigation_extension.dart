import 'package:flutter/material.dart';

extension NavigationContext on BuildContext {
  pushReplacementNamed(routeName) {
    Navigator.of(this).pushReplacementNamed(routeName);
  }
}

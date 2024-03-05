import 'package:flutter/material.dart';

extension NavigationContext on BuildContext {
  pushReplacementNamed({required routeName, Object? arguments}) {
    Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
  }
}

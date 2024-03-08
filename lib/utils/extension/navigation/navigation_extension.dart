import 'package:flutter/material.dart';

extension NavigationContext on BuildContext {
  Future pushReplacementNamed({required routeName, Object? arguments}) =>
      Navigator.of(this).pushReplacementNamed(
        routeName,
        arguments: arguments,
      );

  Future pushNamed({required routeName, Object? arguments}) =>
      Navigator.of(this).pushNamed(routeName, arguments: arguments);

  void pop({Object? arguments}) => Navigator.of(this).pop(arguments);
}

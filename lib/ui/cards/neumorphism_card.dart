import 'package:bluesoft_bank/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class NeumorphismCard extends StatelessWidget {
  const NeumorphismCard({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              blurStyle: BlurStyle.inner,
              color: Colors.black,
              offset: Offset(0, 1),
              blurRadius: 1,
              spreadRadius: 2,
            ),
            BoxShadow(
              blurStyle: BlurStyle.inner,
              color: Colors.black,
              offset: Offset(0, -1),
              blurRadius: 1,
              spreadRadius: 2,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}

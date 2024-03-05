import 'package:bluesoft_bank/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class NeumorphismCard extends StatelessWidget {
  const NeumorphismCard({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              blurStyle: BlurStyle.outer,
              color: Colors.black12,
              offset: Offset(0, 1),
              blurRadius: 3,
              spreadRadius: 1,
            ),
            BoxShadow(
              blurStyle: BlurStyle.inner,
              color: Colors.black12,
              offset: Offset(0, -1),
              blurRadius: 15,
              spreadRadius: .8,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}

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
          color: const Color.fromARGB(252, 250, 250, 250),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              blurStyle: BlurStyle.inner,
              color: Color.fromARGB(255, 219, 219, 219),
              offset: Offset(0, 2),
              blurRadius: 5,
              spreadRadius: 1,
            ),
            BoxShadow(
              blurStyle: BlurStyle.inner,
              color: Color.fromARGB(255, 255, 255, 255),
              offset: Offset(0, -2),
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}

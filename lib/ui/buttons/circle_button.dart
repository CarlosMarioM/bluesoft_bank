import 'package:bluesoft_bank/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });
  final VoidCallback onPressed;
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: InkWell(
        onTap: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              maxRadius: 18,
              backgroundColor: context.theme().primaryColor,
              child: Icon(
                icon,
                color: Colors.white,
                size: 24,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              text.toUpperCase(),
              style: context.theme().textTheme.labelMedium,
            )
          ],
        ),
      ),
    );
  }
}

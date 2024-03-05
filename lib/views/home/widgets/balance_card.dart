import 'package:bluesoft_bank/ui/cards/neumorphism_card.dart';
import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key, required this.totalBalance});
  final num totalBalance;
  @override
  Widget build(BuildContext context) {
    return NeumorphismCard(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Current Balance:",
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "\$ $totalBalance",
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

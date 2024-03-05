import 'package:bluesoft_bank/ui/scaffolds/home_scaffold.dart';
import 'package:bluesoft_bank/ui/buttons/primary_button.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(),
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PrimaryButton(
              isEnabled: true,
              onPressed: () => homeScaffoldKey.currentState!.closeEndDrawer(),
              text: 'TRANSACTIONS',
            ),
            PrimaryButton(
              isEnabled: true,
              onPressed: () => homeScaffoldKey.currentState!.closeEndDrawer(),
              text: 'REPORTS',
            ),
            PrimaryButton(
              isEnabled: true,
              onPressed: () => homeScaffoldKey.currentState!.closeEndDrawer(),
              text: 'SETTINGS',
            ),
            PrimaryButton(
              isEnabled: true,
              onPressed: () => homeScaffoldKey.currentState!.closeEndDrawer(),
              text: 'LOGOUT',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:bluesoft_bank/ui/buttons/secondary_button.dart';
import 'package:bluesoft_bank/ui/scaffolds/home_scaffold.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is the Drawer'),
            SecondaryButton(
              onPressed: () => homeScaffoldKey.currentState!.closeEndDrawer(),
              text: 'Close Drawer',
            ),
          ],
        ),
      ),
    );
  }
}

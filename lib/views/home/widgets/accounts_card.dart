import 'package:bluesoft_bank/core/models/account/account.dart';
import 'package:bluesoft_bank/ui/cards/neumorphism_card.dart';

import 'package:flutter/material.dart';

class AccountsCard extends StatelessWidget {
  const AccountsCard({super.key, required this.accounts});
  final List<Account> accounts;
  @override
  Widget build(BuildContext context) {
    return NeumorphismCard(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DefaultTabController(
          length: accounts.length,
          child: Scaffold(
            appBar: AppBar(
              leading: const SizedBox(),
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              title: Text(
                "Accounts",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              bottom: TabBar(
                  automaticIndicatorColorAdjustment: true,
                  enableFeedback: true,
                  indicatorColor: Colors.black87,
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelStyle: Theme.of(context).textTheme.labelMedium,
                  tabs: [...accounts.map((e) => Text("# ${e.id}"))]),
            ),
            body: SizedBox(
              child: TabBarView(
                children: [
                  ...accounts.map(
                    (e) => Container(
                      margin: const EdgeInsets.all(1),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            e.type.value,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          Center(
                            child: Text(
                              "\$ ${e.balance}",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

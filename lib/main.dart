import 'package:bluesoft_bank/core/di/di.dart';
import 'package:flutter/material.dart';

import 'bluesoft_bank.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const BluesoftBank());
}

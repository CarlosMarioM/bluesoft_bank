import 'package:bluesoft_bank/core/di/di.dart';
import 'package:flutter/material.dart';

import 'bluesoft_bank.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const BluesoftBank());
}

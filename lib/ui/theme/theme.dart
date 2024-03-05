import 'package:flutter/material.dart';

class Theme {
  static get data => ThemeData(
        primaryColor: Colors.red,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData.fallback(),
          titleTextStyle: TextStyle(
            color: Colors.black,
          ),
        ),
      );
}

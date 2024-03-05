import 'package:flutter/material.dart';

class ThemeConstants {
  static const MaterialColor primaryColors = MaterialColor(
    0xFF000000,
    <int, Color>{
      50: Color(0xFF000000),
      100: Color(0xFF1C1C1C),
      200: Color(0xFF333333),
      300: Color(0xFF4C4C4C),
      400: Color(0xFF666666),
      500: Color(0xFF7F7F7F),
      600: Color(0xFF999999),
      700: Color(0xFFB3B3B3),
      800: Color(0xFFCCCCCC),
      900: Color(0xFFE6E6E6),
    },
  );
}

class Theming {
  static get data => ThemeData(
        primaryColorDark: Colors.black,
        primaryColorLight: Colors.black,
        colorScheme: const ColorScheme.dark(
            onInverseSurface: Colors.black,
            onSurface: Colors.black,
            outline: Colors.black,
            surfaceTint: Colors.black,
            inversePrimary: Colors.black),
        primaryColor: Colors.black,
        primarySwatch: ThemeConstants.primaryColors,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.black,
          iconTheme: IconThemeData.fallback(),
          titleTextStyle: TextStyle(
            color: Colors.white70,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 1,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              decorationColor: Colors.white,
              letterSpacing: 1.5,
            ),
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
          elevation: 1,
          foregroundColor: Colors.black,
          textStyle: const TextStyle(
            decorationColor: Colors.white,
            letterSpacing: 1.5,
          ),
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
        )),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.black,
          colorScheme: ColorScheme.dark(),
          focusColor: Colors.black38,
        ),
        textTheme: const TextTheme(
          labelSmall: TextStyle(color: Colors.white),
          headlineLarge: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 42,
              letterSpacing: -2,
              wordSpacing: 3),
        ),
        cardTheme: const CardTheme(
          color: Colors.white,
          elevation: .5,
          margin: EdgeInsets.symmetric(horizontal: 8),
        ),
        dividerTheme: const DividerThemeData(color: Colors.black54),
        inputDecorationTheme: InputDecorationTheme(
          errorMaxLines: 2,
          focusColor: Colors.black,
          hoverColor: Colors.black,
          labelStyle: const TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.black,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.black,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.black,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.black,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.black,
            ),
          ),
        ),
      );
}

extension AppTheme on BuildContext {
  theme() {
    return Theme.of(this);
  }
}

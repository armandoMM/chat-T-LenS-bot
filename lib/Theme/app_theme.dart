import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromRGBO(0, 171, 179, 1.0);
  static const Color background = Color.fromRGBO(60, 64, 72, 1.0);
  static const Color secondary = Color.fromRGBO(178, 178, 178, 1.0);
  static const Color textPrimary = Colors.black;
  static const Color textSecondary = Colors.white;
  static const Color backgroundDark = Colors.grey;
  static final ThemeData ligthTheme = ThemeData.light().copyWith(
      //primary Theme
      primaryColor: primary,
      scaffoldBackgroundColor: background,
      backgroundColor: primary,
      textSelectionTheme: const TextSelectionThemeData(selectionColor: textSecondary),
      //AppBar theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: AppTheme.primary),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 6,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: secondary,
        shape: const StadiumBorder(),
        elevation: 1,
      )),
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10), topRight: Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10), topRight: Radius.circular(10)))));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //primary Theme
    primaryColor: primary,
    //AppBar theme
    appBarTheme: const AppBarTheme(color: secondary, elevation: 0),
    scaffoldBackgroundColor: backgroundDark,
  );
}

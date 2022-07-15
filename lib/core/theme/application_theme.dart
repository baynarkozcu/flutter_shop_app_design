import 'package:flutter/material.dart';

import '../constants/application_colors.dart';

class ApplicationTheme {
  ThemeData lightTheme = ThemeData().copyWith(
    brightness: Brightness.light,
    primaryColor: ApplicationColors.primaryColor,
    backgroundColor: ApplicationColors.bgColor,
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: ApplicationColors.primaryColor,
      ),
      headline2: TextStyle(
        color: ApplicationColors.primaryColor,
      ),
      headline3: TextStyle(
        color: ApplicationColors.primaryColor,
      ),
      headline4: TextStyle(
        color: ApplicationColors.primaryColor,
      ),
      headline5: TextStyle(
        color: ApplicationColors.primaryColor,
      ),
      headline6: TextStyle(
        color: ApplicationColors.primaryColor,
      ),
      bodyText1: TextStyle(
        color: ApplicationColors.accentColor,
      ),
      bodyText2: TextStyle(
        color: ApplicationColors.primaryColor,
      ),
      button: TextStyle(
        color: ApplicationColors.primaryColor,
        fontWeight: FontWeight.bold,
      ),
    ),

    appBarTheme: const AppBarTheme(
      color: ApplicationColors.transparentColor,
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(color: ApplicationColors.accentColor),
      titleTextStyle: TextStyle(
        color: ApplicationColors.primaryColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      shape: CircularNotchedRectangle(),
      color: ApplicationColors.primaryColor,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ApplicationColors.primaryColor,
      foregroundColor: ApplicationColors.bgColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: ApplicationColors.primaryColor,
        alignment: Alignment.center,
      ),
    ),
    buttonTheme: ButtonThemeData(
      // alignedDropdown: false,
      buttonColor: ApplicationColors.primaryColor,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      primary: ApplicationColors.primaryColor,
      alignment: Alignment.center,
    )),
    iconTheme: const IconThemeData(color: ApplicationColors.bgColor),
    // drawerTheme: DrawerThemeData(
    //   backgroundColor: Colors.yellow,
    //   elevation: 2,
    //   scrimColor: Colors.red,
    //   shape: ThemeConsts.round,
    // ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: ApplicationColors.accentColor,
    ),
    dividerTheme: const DividerThemeData(
      color: ApplicationColors.accentColor,
      endIndent: 10,
      indent: 10,
    ),
    inputDecorationTheme: const InputDecorationTheme().copyWith(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      filled: true,
      fillColor: ApplicationColors.cardColor,
      prefixIconColor: ApplicationColors.accentColor,
      suffixIconColor: ApplicationColors.accentColor,
      errorMaxLines: 5,
      iconColor: ApplicationColors.accentColor,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: ApplicationColors.accentColor,
    ),
  );

  ThemeData darkTheme = ThemeData().copyWith(
    brightness: Brightness.dark,
    primaryColor: ApplicationColors.primaryColor,
    backgroundColor: ApplicationColors.bgColor,
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: ApplicationColors.primaryColor,
      ),
      headline2: TextStyle(
        color: ApplicationColors.primaryColor,
      ),
      headline3: TextStyle(
        color: ApplicationColors.primaryColor,
      ),
      headline4: TextStyle(
        color: ApplicationColors.primaryColor,
      ),
      headline5: TextStyle(
        color: ApplicationColors.primaryColor,
      ),
      headline6: TextStyle(
        color: ApplicationColors.primaryColor,
      ),
      bodyText1: TextStyle(
        color: ApplicationColors.accentColor,
      ),
      bodyText2: TextStyle(
        color: ApplicationColors.primaryColor,
      ),
      button: TextStyle(
        color: ApplicationColors.primaryColor,
        fontWeight: FontWeight.bold,
      ),
    ),

    appBarTheme: const AppBarTheme(
      color: ApplicationColors.transparentColor,
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(color: ApplicationColors.accentColor),
      titleTextStyle: TextStyle(
        color: ApplicationColors.primaryColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      shape: CircularNotchedRectangle(),
      color: ApplicationColors.primaryColor,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ApplicationColors.primaryColor,
      foregroundColor: ApplicationColors.bgColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: ApplicationColors.primaryColor,
        alignment: Alignment.center,
      ),
    ),
    buttonTheme: ButtonThemeData(
      // alignedDropdown: false,
      buttonColor: ApplicationColors.primaryColor,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      primary: ApplicationColors.primaryColor,
      alignment: Alignment.center,
    )),
    iconTheme: const IconThemeData(color: Colors.red, size: 15),
    // drawerTheme: DrawerThemeData(
    //   backgroundColor: Colors.yellow,
    //   elevation: 2,
    //   scrimColor: Colors.red,
    //   shape: ThemeConsts.round,
    // ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: ApplicationColors.accentColor,
      endIndent: 10,
      indent: 10,
    ),
    inputDecorationTheme: const InputDecorationTheme().copyWith(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      filled: true,
      fillColor: ApplicationColors.cardColor,
      prefixIconColor: ApplicationColors.accentColor,
      suffixIconColor: ApplicationColors.accentColor,
      errorMaxLines: 5,
      iconColor: ApplicationColors.accentColor,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: ApplicationColors.accentColor,
    ),
  );
}

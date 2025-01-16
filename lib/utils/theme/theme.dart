import 'package:flutter/material.dart';

import 'package:jhn_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:jhn_store/utils/theme/custom_themes/button_sheet_theme.dart';
import 'package:jhn_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:jhn_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:jhn_store/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:jhn_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:jhn_store/utils/theme/custom_themes/text_theme.dart';
import 'package:jhn_store/utils/theme/custom_themes/elevated_button_theme.dart';

class AppTheme {
  AppTheme._();


  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: JTextTheme.lightTextTheme,
    chipTheme: JChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: JAppBarTheme.lightAppBarTheme,
    checkboxTheme: JCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: JBottomSheetTheme.lightButtonSheetTheme,
    elevatedButtonTheme: JElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: JOutlineButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: JTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.blue,
    textTheme: JTextTheme.darkTextTheme,
    chipTheme: JChipTheme.darkChipTheme,
    appBarTheme: JAppBarTheme.darkAppBarTheme,
    checkboxTheme: JCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: JBottomSheetTheme.darkButtonSheetTheme,
    elevatedButtonTheme: JElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: JOutlineButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme: JTextFormFieldTheme.darkInputDecorationTheme,
  );
}
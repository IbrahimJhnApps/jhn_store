import 'package:flutter/material.dart';

class JCheckboxTheme {
  JCheckboxTheme._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states) { // Changed to WidgetStateProperty
      if (states.contains(WidgetState.selected)){
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) { // Changed to WidgetStateProperty
      if (states.contains(WidgetState.selected)) {
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    }),
  );

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states) { // Changed to WidgetStateProperty
      if (states.contains(WidgetState.selected)){
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) { // Changed to WidgetStateProperty
      if (states.contains(WidgetState.selected)) { // Line 34 (no longer flagged)
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    }), // Line 35 (no longer flagged)
  );
}
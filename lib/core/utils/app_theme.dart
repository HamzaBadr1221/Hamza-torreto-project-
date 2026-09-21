import 'package:flutter/material.dart';

class AppTheme {
  ThemeData lightTheme() {
    return ThemeData(brightness: Brightness.light);
  }

  ThemeData darkTheme() {
    return ThemeData(brightness: Brightness.dark);
  }
}

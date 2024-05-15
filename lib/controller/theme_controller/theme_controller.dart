import 'package:flutter/material.dart';

class CustomThemeController with ChangeNotifier {
  static ThemeData lightTheme = ThemeData(brightness: Brightness.light);
  static ThemeData darkTheme = ThemeData(brightness: Brightness.dark);

  ThemeData selectedThemeData = lightTheme;

  themeSelection() {
    if (selectedThemeData == darkTheme) {
      selectedThemeData = lightTheme;
    } else {
      selectedThemeData = darkTheme;
    }
    notifyListeners();
  }
}

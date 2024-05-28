import 'package:flutter/material.dart';
import 'package:lesson43/model/settings.dart';

class SettingsController with ChangeNotifier {
  final Settings settings = Settings(themeMode: ThemeMode.system);

  void toggleSwitch(bool isDark) {
    if (isDark) {
      settings.themeMode = ThemeMode.dark;
    } else {
      settings.themeMode = ThemeMode.light;
    }
    notifyListeners();
  }
}

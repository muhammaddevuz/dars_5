import 'package:flutter/material.dart';
import 'package:lesson43/controllers/settings_controller.dart';

class SettingsNotifier extends InheritedWidget {
  final SettingsController settingsController;

  const SettingsNotifier({
    super.key,
    required super.child,
    required this.settingsController,
  });
  @override
  bool updateShouldNotify(covariant SettingsNotifier oldWidget) {
    return oldWidget.settingsController != settingsController;
  }

  static SettingsController of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SettingsNotifier>()!.settingsController;
  }
}

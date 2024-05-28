import 'package:flutter/material.dart';
import 'package:lesson43/controllers/settings_controller.dart';
import 'package:lesson43/notifires/settings_notifire.dart';
import 'package:lesson43/views/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SettingsNotifier(
        settingsController: SettingsController(),
        child: Builder(builder: (context) {
          return ListenableBuilder(
            listenable: SettingsNotifier.of(context),
            builder: (context, child) {
              return MaterialApp(
                darkTheme: ThemeData.dark(),
                themeMode: SettingsNotifier.of(context).settings.themeMode,
                debugShowCheckedModeBanner: false,
                home: const HomeScreen(),
              );
            },
          );
        }));
  }
}

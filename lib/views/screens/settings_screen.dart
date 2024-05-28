import 'package:flutter/material.dart';
import 'package:lesson43/notifires/settings_notifire.dart';
import 'package:lesson43/views/widgets/custom_drawer.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({
    super.key,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sozlamalar"),
      ),
      drawer: const CustomDrawer(),
      body: ListView(
        children: [
          ListenableBuilder(
            listenable: SettingsNotifier.of(context),
            builder: (context, child) {
              return SwitchListTile(
                value: SettingsNotifier.of(context).settings.themeMode == ThemeMode.dark,
                onChanged: (value) {
                  SettingsNotifier.of(context).toggleSwitch(value);
                },
                title: const Text(
                  "Tungi holat",
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}

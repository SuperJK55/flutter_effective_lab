import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
        child: Text(
          'Настройки',
          style: Theme.of(context).textTheme.titleLarge,
        )
      );
  }
}
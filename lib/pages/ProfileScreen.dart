import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
        child: Text(
          'Профиль',
          style: Theme.of(context).textTheme.titleLarge,
        )
      );
  }
}
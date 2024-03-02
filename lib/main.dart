import 'package:flutter/material.dart';
import 'package:flutter_effective_lab/theme/MyAppTheme.dart';
import 'package:flutter_effective_lab/pages/MainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme(context),
      home: const MainScreen(),
    );
  }
}
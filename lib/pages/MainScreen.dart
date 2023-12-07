import 'package:flutter/material.dart';
import 'package:flutter_effective_lab/widgets/CustomSliverAppBar.dart';
import 'package:flutter_effective_lab/pages/SettingsScreen.dart';
import 'package:flutter_effective_lab/pages/ProfileScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MyMainScreenState();
}

class _MyMainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              const CustomSliverAppBar(),
            ];
          },
          body: const TabBarView(
            children: [
              ProfileScreen(),
              SettingsScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
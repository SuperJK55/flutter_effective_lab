import 'package:flutter/material.dart';
import 'package:flutter_effective_lab/theme/MyAppColor.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: MyAppColor.icon),
      useMaterial3: true,
      scaffoldBackgroundColor: MyAppColor.mainBackground,
      textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 24,
            height: 0.06,
            letterSpacing: -0.40,
            color: MyAppColor.title,
            fontWeight: FontWeight.bold),
        titleMedium: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 14,
            height: 0.08,
            letterSpacing: -0.40,
            color: MyAppColor.title,
            fontWeight: FontWeight.normal),
        displayLarge: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 20,
            height: 0.06,
            letterSpacing: -0.70,
            color: MyAppColor.title,
            fontWeight: FontWeight.bold),
        displayMedium: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 16,
            height: 0.08,
            letterSpacing: -0.40,
            fontWeight: FontWeight.normal),
        displaySmall: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 14,
            height: 0.09,
            letterSpacing: -0.42,
            color: MyAppColor.subtitle,
            fontWeight: FontWeight.bold),        
        bodyMedium: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 16,
            height: 0.08,
            color: MyAppColor.title,
            letterSpacing: -0.40,
            fontWeight: FontWeight.normal),
        bodySmall: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 14,
            height: 0.09,
            color: MyAppColor.subtitle,
            letterSpacing: -0.40,
            fontWeight: FontWeight.normal),
      ),
      tabBarTheme: const TabBarTheme(
        indicatorColor: MyAppColor.tabBarIndicator,
        labelColor: MyAppColor.title,
        dividerColor: MyAppColor.tabBarDivider,
        unselectedLabelColor: MyAppColor.subtitle,
        indicatorSize: TabBarIndicatorSize.tab,
        labelPadding: EdgeInsets.all(8.0),
        labelStyle: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 16,
            height: 0.09,
            letterSpacing: -0.40,
            fontWeight: FontWeight.normal),
        unselectedLabelStyle: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 16,
            height: 0.09,
            letterSpacing: -0.40,
            fontWeight: FontWeight.normal),
      ));
}
import 'package:flutter/material.dart';
import 'package:flutter_effective_lab/theme/MyAppColor.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: MyAppColor.icon),
      scaffoldBackgroundColor: MyAppColor.mainBackground,
      appBarTheme: const AppBarTheme(
        surfaceTintColor: Colors.white,
      ),
      chipTheme: ChipThemeData(
        selectedColor: Colors.black45,
        checkmarkColor: Colors.black,
        backgroundColor: MyAppColor.chipBackground,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: Colors.transparent)),
        labelStyle: const TextStyle(
            fontFamily: 'SFProText',
            fontSize: 14,
            letterSpacing: -0.41,
            color: MyAppColor.title,
            fontWeight: FontWeight.w300),
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 24,
            letterSpacing: -0.40,
            color: MyAppColor.title,
            fontWeight: FontWeight.w700),
        titleMedium: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 14,
            letterSpacing: -0.41,
            color: MyAppColor.title,
            fontWeight: FontWeight.w500),
        displayLarge: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 20,
            letterSpacing: -0.70,
            color: MyAppColor.title,
            fontWeight: FontWeight.w700),
        displayMedium: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 16,
            letterSpacing: -0.40,
            fontWeight: FontWeight.w500),
        displaySmall: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 14,
            letterSpacing: -0.42,
            color: MyAppColor.subtitle,
            fontWeight: FontWeight.w500),        
        bodyMedium: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 16,
            color: MyAppColor.title,
            letterSpacing: -0.40,
            fontWeight: FontWeight.w500),
        bodySmall: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 14,
            color: MyAppColor.subtitle,
            letterSpacing: -0.40,
            fontWeight: FontWeight.w500),
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
            letterSpacing: -0.40,
            fontWeight: FontWeight.w500),
        unselectedLabelStyle: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 16,
            letterSpacing: -0.40,
            fontWeight: FontWeight.w500),
      ));
}
import 'package:flutter/material.dart';

/*--------------------------------------- Colors ----------------------------------------*/
const kColorPrimary = Color(0xff190482);
const kColorBackground = Color(0xffF1EFEF);
const kColorWhite = Color(0xffffffff);
const kColorGreen = Colors.green;

/*--------------------------------------- Styles ----------------------------------------*/
const kStyleTextW700CW = TextStyle(color: kColorWhite, fontWeight: FontWeight.w700);
const kStyleTextW700CP = TextStyle(color: kColorPrimary, fontWeight: FontWeight.w700);
const kStyleTextW500CG = TextStyle(color: kColorGreen, fontWeight: FontWeight.w500);
const kStyleTextW500CW = TextStyle(color: kColorWhite, fontWeight: FontWeight.w500);

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: kColorBackground,
  primaryColor: kColorPrimary,
  textTheme: const TextTheme(),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 50),
      backgroundColor: kColorPrimary,
      foregroundColor: kColorWhite,
      // padding: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      elevation: 0,
    ),
  ),
);

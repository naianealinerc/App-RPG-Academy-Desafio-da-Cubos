// Documento com tonken de cores e themes

import 'package:flutter/material.dart';

const Color primaryColor = Color(0xffe5007b);

const Color bodyLight = Color(0xFFFFFFFF);
const Color backgroundLight = Color(0xfff2f4f7);
const Color textLight = Color(0xff3a3b40);

const Color bodyDark = Color(0xff343434);
const Color backgroundDark = Color(0xff3b3b3b);
const Color textDark = Color(0xfff1f1f1);

const Color switchTrackerActive = Color(0xff675380);

const Color buttonPage = Color(0xffc4c4c4);

class RPGAcademyTheme {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    cardColor: backgroundLight,
    appBarTheme: const AppBarTheme(color: primaryColor, toolbarHeight: 17),
    backgroundColor: bodyLight,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          elevation: 0,
          minimumSize: const Size(135, 40),
          side: const BorderSide(color: primaryColor),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(color: textDark,
          fontSize: 14,
          fontFamily: "Roboto",
          fontWeight: FontWeight.w600),
          elevation: 0,
          minimumSize: const Size(135, 40),
          backgroundColor: primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
          color: textLight,
          fontSize: 14,
          fontFamily: "Roboto",
          fontWeight: FontWeight.w600),
      bodyText2: TextStyle(
          color: textDark,
          fontSize: 14,
          fontFamily: "Roboto",
          fontWeight: FontWeight.w600),
    ),
  );

  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    cardColor: backgroundDark,
    appBarTheme: const AppBarTheme(color: primaryColor, toolbarHeight: 17),
    backgroundColor: bodyDark,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          elevation: 0,
          minimumSize: const Size(135, 40),
          side: const BorderSide(color: primaryColor),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(color: textDark,
          fontSize: 14,
          fontFamily: "Roboto",
          fontWeight: FontWeight.w600),
          elevation: 0,
          minimumSize: const Size(135, 40),
          backgroundColor: primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
          color: textLight,
          fontSize: 14,
          fontFamily: "Roboto",
          fontWeight: FontWeight.w400),
      bodyText1: TextStyle(
          color: textDark,
          fontSize: 14,
          fontFamily: "Roboto",
          fontWeight: FontWeight.w600),
    ),
  );
}

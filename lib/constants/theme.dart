import 'package:capstone_flutter/constants/palette.dart';
import 'package:flutter/material.dart';

const myTextTheme = TextTheme(
  bodyText1: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Palette.kBodyColor,
  ),
  headline1: TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: Palette.kTitleColor,
  ),
);

final appTheme = ThemeData(
  errorColor: const Color(0xFFFF4141),
  primaryColor: const Color(0xFF4CA6A8),
  fontFamily: 'Poppins',
  scaffoldBackgroundColor: const Color(0xFFFAFAFA),
  navigationBarTheme: const NavigationBarThemeData(
    elevation: 2,
    backgroundColor: Colors.white,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFFAFAFA),
    elevation: 0,
  ),
  textTheme: myTextTheme,
);

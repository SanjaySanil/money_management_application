import 'package:flutter/material.dart';
import 'package:money_management_app/consts/color_const.dart';
import 'package:money_management_app/consts/image_const.dart';

class TTextTheme {
  static TextTheme textTheme = const TextTheme(
    headlineLarge: TextStyle(),
    headlineMedium: TextStyle(),
    headlineSmall: TextStyle(),
    titleLarge: TextStyle(
        fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
    titleMedium: TextStyle(),
    titleSmall: TextStyle(),
    displayLarge: TextStyle(),
    displayMedium: TextStyle(),
    displaySmall: TextStyle(),
    labelLarge: TextStyle(),
    labelMedium: TextStyle(),
    labelSmall: TextStyle(),
    bodyLarge: TextStyle(
      fontSize:22,
      fontWeight:FontWeight.bold,
      color:Colors.black,
    ),
    bodyMedium: TextStyle(
      fontSize:17,
      fontWeight: FontWeight.w600,
      color: Color(TColorConst.primaryColor),
    ),
    bodySmall: TextStyle(),
  );
}

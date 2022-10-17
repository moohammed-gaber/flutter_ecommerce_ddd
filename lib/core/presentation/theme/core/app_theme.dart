import 'package:flutter/material.dart';
import 'package:untitled/core/presentation/theme/colors.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
      scaffoldBackgroundColor: white,
      primarySwatch: Colors.red,
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink),
      appBarTheme: AppBarTheme(color: white),
      fontFamily: 'Poppins',
      textTheme: TextTheme(),
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),

          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Color(0xffE0E0E0))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Color(0xffE0E0E0))),
          // iconColor: Color(0xff444444),
          hintStyle: TextStyle(
              color: Color(0xff474749),
              fontWeight: FontWeight.w400,
              fontSize: 11),
          fillColor: Color(0xffF5F7F9)));
}

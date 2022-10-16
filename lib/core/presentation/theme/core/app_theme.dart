import 'package:flutter/material.dart';
import 'package:untitled/core/presentation/theme/colors.dart';
import 'package:untitled/core/presentation/theme/text_styles.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
      fontFamily: 'Poppins',
      textTheme: TextTheme(

/*
        bodyText1: TextStyle(
            color: Color(0xff474749),
            fontWeight: FontWeight.bold,
            fontSize: 11),
        bodyText2: TextStyle(
            color: Color(0xff474749), fontWeight: FontWeight.w400, fontSize: 9),
        bodyLarge: TextStyle(
            color: Color(0xff474749),
            fontWeight: FontWeight.bold,
            fontSize: 11),
        bodyMedium: TextStyle(
            color: Color(0xff474749), fontWeight: FontWeight.w400, fontSize: 9),
*/
          ),
/*
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,

          selectedItemColor: red,
          unselectedItemColor: grey,
          selectedLabelStyle: w500Sp7,
          unselectedLabelStyle: w500Sp7,
          unselectedIconTheme: IconThemeData(color: grey),
          selectedIconTheme: IconThemeData(color: red),


          showSelectedLabels: true,
          showUnselectedLabels: true,
*/
/*
          unselectedIconTheme: IconThemeData(color: grey),
          selectedIconTheme: IconThemeData(color: red),
*//*

          type: BottomNavigationBarType.fixed),
*/
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
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

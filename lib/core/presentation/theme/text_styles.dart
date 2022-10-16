import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

TextStyle get boldSp11 => TextStyle(
    color: Color(0xff474749), fontWeight: FontWeight.bold, fontSize: 11.sp);
TextStyle get boldSp10 => TextStyle(
    color: Color(0xff474749), fontWeight: FontWeight.bold, fontSize: 11.sp);
TextStyle get w500Sp9 => TextStyle(
    color: Color(0xff474749), fontWeight: FontWeight.w500, fontSize: 9.sp);
TextStyle get w500Sp18 => TextStyle(
    color: Color(0xff474749), fontWeight: FontWeight.w500, fontSize: 18.sp);
TextStyle get w500Sp18Red => w500Sp18.copyWith(color: darkRed);
TextStyle get w400Sp7 => TextStyle(
    color: Color(0xff949494), fontWeight: FontWeight.w400, fontSize: 7.sp);

TextStyle get w500Sp7 => TextStyle(
    color: Color(0xff474749), fontWeight: FontWeight.w500, fontSize: 9.sp);
TextStyle get w500Sp9White => w500Sp9.copyWith(color: Colors.white);

TextStyle get w500Sp11Red => TextStyle(
    color: Color(0xffD03A27), fontWeight: FontWeight.w500, fontSize: 11.sp);
TextStyle get boldSp31 => TextStyle(
    color: Color(0xffEE6A61), fontWeight: FontWeight.bold, fontSize: 31.sp);

TextStyle get boldSp18Red => TextStyle(
    color: Color(0xffEE6A61), fontWeight: FontWeight.bold, fontSize: 18.sp);
TextStyle get boldSp18White => TextStyle(
    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.sp);
TextStyle get boldSp18WhiteLingThrough => TextStyle(
    decoration: TextDecoration.lineThrough,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18.sp);
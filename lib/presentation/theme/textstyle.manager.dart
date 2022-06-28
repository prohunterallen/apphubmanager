import 'package:flutter/material.dart';
import 'fonts.manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle _getTextStyle(double? fontSize, String? fontFamily,
    FontWeight? fontWeight, Color? color) {
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    decoration: TextDecoration.none,
  );
}

//H1
TextStyle getH1(
    {double fontSize = FontSize.s48,
    String fontFamily = FontConstants.fontMitrFamily,
    required Color color}) {
  return _getTextStyle(
      fontSize.sp, fontFamily, FontWeightManager.regular, color);
}

//H2
TextStyle getH2(
    {double fontSize = FontSize.s32,
    String fontFamily = FontConstants.fontMitrFamily,
    required Color color}) {
  return _getTextStyle(
      fontSize.sp, fontFamily, FontWeightManager.regular, color);
}

//H3
TextStyle getH3(
    {double fontSize = FontSize.s24,
    String fontFamily = FontConstants.fontMitrFamily,
    required Color color}) {
  return _getTextStyle(
      fontSize.sp, fontFamily, FontWeightManager.regular, color);
}

//Text1
TextStyle getText1(
    {double fontSize = FontSize.s20,
    String fontFamily = FontConstants.fontMitrFamily,
    required Color color}) {
  return _getTextStyle(
      fontSize.sp, fontFamily, FontWeightManager.regular, color);
}

//Text2
TextStyle getText2(
    {double fontSize = FontSize.s16,
    String fontFamily = FontConstants.fontMitrFamily,
    required Color color}) {
  return _getTextStyle(
      fontSize.sp, fontFamily, FontWeightManager.regular, color);
}

//Text3
TextStyle getText3(
    {double fontSize = FontSize.s14,
    String fontFamily = FontConstants.fontMitrFamily,
    required Color color}) {
  return _getTextStyle(
      fontSize.sp, fontFamily, FontWeightManager.regular, color);
}

//Text4
TextStyle getText4(
    {double fontSize = FontSize.s13,
    String fontFamily = FontConstants.fontMitrFamily,
    required Color color}) {
  return _getTextStyle(
      fontSize.sp, fontFamily, FontWeightManager.regular, color);
}

//Text4
TextStyle getText5(
    {double fontSize = FontSize.s10,
    String fontFamily = FontConstants.fontMitrFamily,
    required Color color}) {
  return _getTextStyle(
      fontSize.sp, fontFamily, FontWeightManager.regular, color);
}

//H1B
TextStyle getH1B(
    {double fontSize = FontSize.s48,
    String fontFamily = FontConstants.fontRobotoFamily,
    required Color color}) {
  return _getTextStyle(fontSize.sp, fontFamily, FontWeightManager.bold, color);
}

//H2B
TextStyle getH2B(
    {double fontSize = FontSize.s32,
    String fontFamily = FontConstants.fontRobotoFamily,
    required Color color}) {
  return _getTextStyle(fontSize.sp, fontFamily, FontWeightManager.bold, color);
}

//H3B
TextStyle getH3B(
    {double fontSize = FontSize.s24,
    String fontFamily = FontConstants.fontRobotoFamily,
    required Color color}) {
  return _getTextStyle(fontSize.sp, fontFamily, FontWeightManager.bold, color);
}

//Text1B
TextStyle getText1B(
    {double fontSize = FontSize.s20,
    String fontFamily = FontConstants.fontRobotoFamily,
    required Color color}) {
  return _getTextStyle(fontSize.sp, fontFamily, FontWeightManager.bold, color);
}

//Text2B
TextStyle getText2B(
    {double fontSize = FontSize.s16,
    String fontFamily = FontConstants.fontRobotoFamily,
    required Color color}) {
  return _getTextStyle(fontSize.sp, fontFamily, FontWeightManager.bold, color);
}

//Text3B
TextStyle getText3B(
    {double fontSize = FontSize.s14,
    String fontFamily = FontConstants.fontRobotoFamily,
    required Color color}) {
  return _getTextStyle(fontSize.sp, fontFamily, FontWeightManager.bold, color);
}

//Text4B
TextStyle getText4B(
    {double fontSize = FontSize.s13,
    String fontFamily = FontConstants.fontRobotoFamily,
    required Color color}) {
  return _getTextStyle(fontSize.sp, fontFamily, FontWeightManager.bold, color);
}

//Text5B
TextStyle getText5B(
    {double fontSize = FontSize.s10,
    String fontFamily = FontConstants.fontRobotoFamily,
    required Color color}) {
  return _getTextStyle(fontSize.sp, fontFamily, FontWeightManager.bold, color);
}

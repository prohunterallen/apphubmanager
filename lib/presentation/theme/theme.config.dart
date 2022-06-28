import 'package:app_hub_manager/presentation/theme/color.palette.manager.dart';
import 'package:app_hub_manager/presentation/theme/fonts.manager.dart';
import 'package:flutter/material.dart';

///
///
///
///MAIN THEME
///
///

enum ActiveMenu { home, livestock, schdule, more }

//application overall fonts
const String fontFamilyTheme = 'Mitr';

//Based Global button border radius
const double buttonBorderRadiusTheme = 24.0;

//input color theme
final Color inputColorTheme = ColorManager.nearWhite;
final Color inputBorderColorTheme = ColorManager.tone200;
const double inputBorderRadius = 4.0;
const double inputHeight = 48.0;

//primary color theme
final Color primaryColorTheme = Colors.blue[800]!;

//Default text color
final Color primaryTextColorTheme = ColorManager.tone800;

//default  btn font size
const double defaultButtonFontSize = FontSize.s16;
const double defaultTextButtonFontSize = FontSize.s16;

//btn height
const buttonHeight = 48.0;

//all main background color
const Color mainBackground = Color(0xFFe9e9e9);
const Color navBackground = Color(0xFFe9e9e9);

//icon appbar color
final Color navbarIconColor = ColorManager.tone900;
//Navbar shadow color
const Color navbarShadowColor = Colors.transparent;
//nav bar height
const double navbarHeight = 56.0;

//footer height
const double footerHeight = 72.0;

//nav menu icons size
const double navMenuIconSize = FontSize.s32;

///floating bottom

const double floatingSize = 32.0;

///
///
///ENF Theme config
///
///

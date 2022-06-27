import 'package:app_hub_manager/presentation/theme/color.palette.manager.dart';
import 'package:app_hub_manager/presentation/theme/textstyle.manager.dart';
import 'package:app_hub_manager/presentation/theme/theme.config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final themeData = ThemeData(
    fontFamily: fontFamilyTheme,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: primaryColorTheme,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      backgroundColor: primaryColorTheme,
    ),
    //animation transition page
    pageTransitionsTheme: PageTransitionsTheme(builders: {
      TargetPlatform.android: CustomPageTransitionTheme(),
      TargetPlatform.iOS: CustomPageTransitionTheme()
    }),
    //default primary btn eleveatebtn
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        fixedSize:
            MaterialStateProperty.all(Size(double.infinity, buttonHeight.sp)),
        maximumSize:
            MaterialStateProperty.all(Size(double.infinity, buttonHeight.sp)),
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(primaryColorTheme),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonBorderRadiusTheme.r))),
        textStyle: MaterialStateProperty.all(
            getText2B(color: Colors.white, fontSize: defaultButtonFontSize)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      foregroundColor: MaterialStateProperty.all(primaryColorTheme),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonBorderRadiusTheme.r)),
      ),
      textStyle: MaterialStateProperty.all(
        getText2B(color: Colors.white, fontSize: defaultTextButtonFontSize),
      ),
    )),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        fixedSize:
            MaterialStateProperty.all(Size(double.infinity, buttonHeight.sp)),
        maximumSize:
            MaterialStateProperty.all(Size(double.infinity, buttonHeight.sp)),
        elevation: MaterialStateProperty.all(0),
        foregroundColor: MaterialStateProperty.all(primaryColorTheme),
        side: MaterialStateProperty.all(
            BorderSide(color: primaryColorTheme, width: 1.5.sp)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(buttonBorderRadiusTheme.r)),
        ),
        textStyle: MaterialStateProperty.all(
          getText3B(color: Colors.white, fontSize: defaultButtonFontSize),
        ),
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith(getRadioColor),
    ));

//Radio Color State
Color getRadioColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.selected,
    MaterialState.hovered,
    MaterialState.focused,
    MaterialState.pressed,
  };
  if (states.any(interactiveStates.contains)) {
    return primaryColorTheme;
  }
  return ColorManager.tone150;
}

//Custom route animation
class CustomPageTransitionTheme extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    if (route.settings.name == "/") return child;
    return ScaleTransition(
      scale: animation,
      alignment: Alignment.center,
      child: child,
    );
  }
}

///
///
///
/// Title Willscope no footer
///
///
import 'dart:ui';

import 'package:app_hub_manager/presentation/theme/icons.theme.dart';
import 'package:app_hub_manager/presentation/theme/theme.config.dart';
import 'package:flutter/material.dart';
import 'package:app_hub_manager/apphub.dart';

class TitleWillScopeWithFooterLayout extends StatelessWidget {
  final Widget title;
  final Widget body;
  final Color? backgroundColor;
  final bool? isTitleCenter;
  final List<Widget>? actions;

  const TitleWillScopeWithFooterLayout({
    Key? key,
    required this.title,
    required this.body,
    this.backgroundColor = mainBackground,
    this.isTitleCenter = false,
    this.actions = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: backgroundColor,
      appBar: AppBar(
        iconTheme: iconThemeData,
        backgroundColor: navBackground,
        shadowColor: navbarShadowColor,
        toolbarHeight: navbarHeight.sp,
        centerTitle: isTitleCenter,
        title: title,
        actions: actions,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.sp),
        child: body,
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 52.sp,
        child: ClipRect(
          child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10,
                sigmaY: 20.0,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/fromavesta.png',
                ),
              )),
        ),
      ),
    );
  }
}

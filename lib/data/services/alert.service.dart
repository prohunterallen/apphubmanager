import 'dart:ui';
import 'package:app_hub_manager/presentation/theme/color.palette.manager.dart';
import 'package:app_hub_manager/presentation/theme/fonts.manager.dart';
import 'package:app_hub_manager/presentation/theme/textstyle.manager.dart';
import 'package:app_hub_manager/presentation/theme/theme.config.dart';
import 'package:flutter/material.dart';
import 'package:app_hub_manager/apphub.dart';

enum NotifyType {
  primary,
  info,
  warning,
  error,
  success,
}

/// ส่วนของการแจ้งเตือน
class AlertService {
  BuildContext? _context;

  /// สำหรับเริ่มต้นของ class
  Widget initialize({required BuildContext context, required Widget child}) {
    _context = context;
    return child;
  }

  /// การแจ้งเตือนทั่วไป
  void notify(
    String message, {
    Function()? onPressed,
    String label = "Close",
    NotifyType type = NotifyType.primary,
  }) {
    Color backgroundColor;
    Color color;
    IconData icon;
    switch (type) {
      case NotifyType.error:
        backgroundColor = ColorManager.danger600;
        color = Colors.white;
        icon = Icons.error_outline;
        break;
      case NotifyType.warning:
        backgroundColor = ColorManager.warning600;
        color = Colors.white;
        icon = Icons.warning_amber_rounded;
        break;
      case NotifyType.info:
        backgroundColor = ColorManager.primary500;
        color = Colors.white;
        icon = Icons.info_outline;
        break;
      case NotifyType.success:
        backgroundColor = ColorManager.secondary600;
        color = Colors.white;
        icon = Icons.check_circle_rounded;
        break;
      default:
        backgroundColor = primaryColorTheme;
        color = Colors.white;
        icon = Icons.notifications_outlined;
    }

    final snackBar = SnackBar(
      backgroundColor: backgroundColor,
      behavior: SnackBarBehavior.fixed,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0.r),
            topRight: Radius.circular(10.0.r),
            bottomLeft: Radius.zero,
            bottomRight: Radius.zero),
      ),
      content: Row(
        mainAxisAlignment: onPressed == null
            ? MainAxisAlignment.center
            : MainAxisAlignment.start,
        children: [
          Icon(icon, color: color, size: 20.w),
          SizedBox(width: 5.w),
          Text(
            message,
            style: getText1(color: color, fontSize: FontSize.s16),
          ),
        ],
      ),
      action: onPressed == null
          ? null
          : SnackBarAction(
              label: label,
              onPressed: onPressed,
              textColor: Colors.white.withOpacity(0.8),
            ),
    );
    ScaffoldMessenger.of(_context!).hideCurrentSnackBar();
    ScaffoldMessenger.of(_context!).showSnackBar(snackBar);
  }

  Future<void> alertNotify(String content, [String? title]) {
    return showDialog(
      context: _context!,
      builder: (ctx) => AlertDialog(
        title: Row(
          children: [
            Expanded(
              flex: 1,
              child: Icon(Icons.info_outline, size: 22.sp),
            ),
            Expanded(
              flex: 5,
              child: Text(
                title ?? 'โปรดทราบ',
                style: getText2B(color: ColorManager.tone800),
              ),
            ),
          ],
        ),
        content: Text(
          content,
          style: getText2(color: ColorManager.tone800),
        ),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.of(ctx).pop(),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 35.w),
              ),
            ),
            child: Text(
              'ตกลง',
              style: TextStyle(
                fontFamily: fontFamilyTheme,
                fontWeight: FontWeight.w800,
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool?> confirmNotify(String content, [String? title]) {
    return showDialog<bool>(
      context: _context!,
      builder: (ctx) => AlertDialog(
        title: Row(
          children: [
            Expanded(flex: 1, child: Icon(Icons.warning, size: 22.w)),
            Expanded(
              flex: 5,
              child: Text(
                title ?? 'ยืนยันการทำรายการ',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: fontFamilyTheme,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
        content: Text(
          content,
          style: TextStyle(
            fontFamily: fontFamilyTheme,
            fontWeight: FontWeight.w400,
            fontSize: 18.sp,
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 35.w),
              ),
            ),
            child: Text(
              'ยืนยัน',
              style: TextStyle(
                fontFamily: fontFamilyTheme,
                fontWeight: FontWeight.w800,
                fontSize: 16.sp,
              ),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 35.w),
              ),
            ),
            child: Text(
              'ยกเลิก',
              style: TextStyle(
                fontFamily: fontFamilyTheme,
                fontWeight: FontWeight.w800,
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> detailNotify(Widget content, [String? title, Icon? icon]) {
    return showDialog(
      context: _context!,
      builder: (ctx) => AlertDialog(
        title: Row(
          children: [
            Expanded(
              flex: 1,
              child: icon ?? Icon(Icons.info_outline, size: 22.w),
            ),
            Expanded(
              flex: 5,
              child: Text(
                title ?? 'รายละเอียด',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: fontFamilyTheme,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
        content: Expanded(
          flex: 1,
          child: SingleChildScrollView(
            child: Container(
              child: content,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 35.w),
              ),
            ),
            child: Text(
              'ปิด',
              style: TextStyle(
                fontFamily: fontFamilyTheme,
                fontWeight: FontWeight.w800,
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> loadingNotify() {
    return showDialog(
      useSafeArea: true,
      barrierDismissible: false,
      barrierColor: Colors.transparent,
      context: _context!,
      builder: (ctx) {
        // Future.delayed(const Duration(milliseconds: 3000),
        //     () => Navigator.of(ctx).pop(true));
        return SafeArea(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                height: 250.sp,
                width: 250.sp,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200.withOpacity(0.5),
                ),
                // child: LoadingNayhoi(width: 125.sp),
                child: Container(),
              ),
            ),
          ),
        );
      },
    );
  }
}

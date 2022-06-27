import 'package:app_hub_manager/data/services/alert.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';

///For Multilanguage
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
export 'package:flutter_gen/gen_l10n/app_localizations.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

abstract class AppHub {
  //for scaling screen
  ScreenUtil get screen {
    return ScreenUtil();
  }

// System alert dialog
  final alert = AlertService();

// multilanguage
  AppLocalizations? lang(context) {
    return AppLocalizations.of(context);
  }
}

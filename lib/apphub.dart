import 'package:app_hub_manager/data/services/alert.service.dart';
import 'package:app_hub_manager/data/services/files.services.dart';
import 'package:app_hub_manager/data/services/storage.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';

///For Multilanguage
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
export 'package:flutter_gen/gen_l10n/app_localizations.dart';
// ignore: unused_import
// import 'package:flutter_localizations/flutter_localizations.dart';
// export 'package:flutter_localizations/flutter_localizations.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

abstract class AppHub {
  final storage = StorageService();

  final filesService = FilesService();

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

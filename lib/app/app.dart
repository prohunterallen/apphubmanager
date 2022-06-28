import 'package:app_hub_manager/data/provider/comunicate.provider.dart';
import 'package:app_hub_manager/presentation/theme/theme.config.dart';
import 'package:app_hub_manager/presentation/theme/theme.manager.dart';
import 'package:app_hub_manager/presentation/widget/init.widget.dart';
import 'package:app_hub_manager/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:app_hub_manager/apphub.dart';

//localization
import 'package:app_hub_manager/l10n/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:app_hub_manager/data/provider/locale.provider.dart';

class AppHubManager extends StatefulWidget {
  const AppHubManager({Key? key}) : super(key: key);

  @override
  State<AppHubManager> createState() => _AppHubManagerState();
}

class _AppHubManagerState extends State<AppHubManager> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ComunicateProvider()),
        ChangeNotifierProvider(create: (context) => LocaleProvider()),
      ],
      builder: (BuildContext context, child) {
        final langprovider = Provider.of<LocaleProvider>(context);
        return ScreenUtilInit(
          minTextAdapt: true,
          designSize: const Size(360, 800),
          builder: (context, _) => MaterialApp(
            color: primaryColorTheme,
            navigatorKey: navigatorKey,
            routes: routes,
            title: 'App Hub Manager - ศูนย์รวมแอพ',
            theme: themeData,
            locale: langprovider.locale,
            supportedLocales: L10n.all,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              //auto support multilang in multi os
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              //support all region position letter
              GlobalWidgetsLocalizations.delegate,
            ],
            home: const Initialization(),
          ),
        );
      },
    );
  }
}

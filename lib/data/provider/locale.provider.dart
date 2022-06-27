import 'package:app_hub_manager/l10n/l10n.dart';
import 'package:flutter/material.dart';

class LocaleProvider with ChangeNotifier {
  //default in thailanguages
  Locale? _locale = L10n.all[0];

  Locale? get locale => _locale;

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;
    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    _locale = null;
    notifyListeners();
  }
}

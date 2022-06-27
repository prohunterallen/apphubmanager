import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('th'),
    const Locale('en'),
    const Locale('lo'),
  ];

  static String? getFlag(String code) {
    switch (code) {
      case 'th':
        return '🇹🇭';
      case 'en':
        return '🏴󠁧󠁢󠁥󠁮󠁧󠁿';
      case 'lo':
        return '🇱🇦';
    }
    return null;
  }
}

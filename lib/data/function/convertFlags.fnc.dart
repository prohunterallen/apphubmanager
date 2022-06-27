import 'package:flutter/material.dart';

Image? convertFlags(String? code) {
  if (code != null) {
    String codeLow = code.toLowerCase();
    String a = 'assets/icons/flags/$codeLow.png';
    return Image.asset(
      a,
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) =>
              Image.asset(a),
    );
  }
  return null;
}

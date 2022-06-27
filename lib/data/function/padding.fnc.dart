import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Padding get getPD4 {
  return Padding(padding: EdgeInsets.all(2.sp));
}

Padding get getPD8 {
  return Padding(padding: EdgeInsets.all(4.sp));
}

Padding get getPD16 {
  return Padding(padding: EdgeInsets.all(8.sp));
}

Padding getPD(double val) {
  final double a = val / 2;
  return Padding(padding: EdgeInsets.all(a.sp));
}

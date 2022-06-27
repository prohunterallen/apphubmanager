import 'package:app_hub_manager/presentation/widget/home/home.screen.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/home': (_) => HomeScreen(),
};

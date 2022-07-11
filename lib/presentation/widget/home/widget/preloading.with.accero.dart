import 'dart:async';

import 'package:app_hub_manager/apphub.dart';
import 'package:app_hub_manager/data/function/padding.fnc.dart';
import 'package:app_hub_manager/presentation/theme/color.palette.manager.dart';
import 'package:app_hub_manager/presentation/theme/textstyle.manager.dart';
import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

class PreloadingWithAccerometerWidget extends StatefulWidget with AppHub {
  PreloadingWithAccerometerWidget({Key? key}) : super(key: key);

  @override
  State<PreloadingWithAccerometerWidget> createState() =>
      _PreloadingWithAccerometerWidgetState();
}

class _PreloadingWithAccerometerWidgetState
    extends State<PreloadingWithAccerometerWidget> {
  AccelerometerEvent? acceleration;
  StreamSubscription<AccelerometerEvent>? _streamSubscription;

  int bgMotionSensitivity = 4;

  @override
  void initState() {
    _streamSubscription =
        accelerometerEvents.listen((AccelerometerEvent event) {
      setState(() {
        acceleration = event;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        // image: DecorationImage(
        //   image: AssetImage("assets/images/Waihou.png"),
        //   fit: BoxFit.cover,
        // ),
      ),
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 325),
            top: acceleration == null
                ? 0
                : acceleration!.y * bgMotionSensitivity,
            bottom: acceleration == null
                ? 0
                : acceleration!.y * -bgMotionSensitivity,
            right: acceleration == null
                ? 0
                : acceleration!.x * -bgMotionSensitivity,
            left: acceleration == null
                ? 0
                : acceleration!.x * bgMotionSensitivity,
            child: Image.asset(
              "assets/images/Waihou.png",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 125.w,
                      height: 125.h,
                      child: Image.asset('assets/images/icons.png')),
                  getPD8,
                  Text('App Hub Manager',
                      style: getH3(
                        color: ColorManager.tone700,
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

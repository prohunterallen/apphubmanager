import 'package:app_hub_manager/apphub.dart';
import 'package:app_hub_manager/data/function/padding.fnc.dart';
import 'package:app_hub_manager/presentation/theme/color.palette.manager.dart';
import 'package:app_hub_manager/presentation/theme/textstyle.manager.dart';
import 'package:flutter/material.dart';

class PreloadingWidget extends StatelessWidget with AppHub {
  PreloadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
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
    );
  }
}

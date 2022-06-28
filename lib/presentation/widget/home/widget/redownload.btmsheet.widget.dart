import 'package:app_hub_manager/apphub.dart';
import 'package:app_hub_manager/data/function/padding.fnc.dart';
import 'package:app_hub_manager/presentation/theme/color.palette.manager.dart';
import 'package:app_hub_manager/presentation/theme/textstyle.manager.dart';
import 'package:flutter/material.dart';

class ReDownloadWidget extends StatelessWidget with AppHub {
  ReDownloadWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("App Name installation files detected!",
            style: getH3(
              color: ColorManager.tone800,
            )),
        getPD8,
        Text(
          "Manager detected that all necessary files for App Name installation were found. Do you want to install it?",
          style: getText3(color: ColorManager.tone800),
        ),
        getPD16,
        SizedBox(
            width: double.infinity,
            child:
                ElevatedButton(onPressed: () {}, child: const Text("INSTALL"))),
        getPD8,
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: const Text("REDOWNLOAD"))),
      ],
    );
  }
}

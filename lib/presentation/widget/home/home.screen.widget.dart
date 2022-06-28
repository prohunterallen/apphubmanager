import 'package:app_hub_manager/apphub.dart';
import 'package:app_hub_manager/data/function/padding.fnc.dart';
import 'package:app_hub_manager/presentation/theme/layouts/layout02_titlewillscopenofooter/titlewillscopenofooter.layout.dart';
import 'package:app_hub_manager/presentation/theme/textstyle.manager.dart';
import 'package:app_hub_manager/presentation/theme/title.widget.dart';
import 'package:app_hub_manager/presentation/widget/home/widget/appitems.widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget with AppHub {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TitleWillScopeWithFooterLayout(
        title: const TitleWidget(text: 'Manager'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                size: 32.sp,
              )),
          getPD4
        ],
        body: ListView.separated(
          padding: EdgeInsets.only(bottom: 24.sp, top: 24.sp),
          separatorBuilder: (context, index) => getPD16,
          itemCount: 1 + 1,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0.sp),
                      child: Text(
                        'APPS',
                        style: getText3(color: Colors.blue),
                      ),
                    ),
                  ),
                  getPD4,
                ],
              );
            }
            index -= 1;
            return AppItemsWidget();
          },
        )

        //  Container(
        //   padding: EdgeInsets.only(top: 24.sp),
        //   child: Column(
        //     children: [
        //       Align(
        //         alignment: Alignment.centerLeft,
        //         child: Text(
        //           'APPS',
        //           style: getText4(color: Colors.blue),
        //         ),
        //       ),
        //       getPD4,
        //     ],
        //   ),
        // ),
        );
  }
}

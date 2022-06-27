import 'package:app_hub_manager/apphub.dart';
import 'package:app_hub_manager/presentation/theme/color.palette.manager.dart';
import 'package:app_hub_manager/presentation/theme/textstyle.manager.dart';
import 'package:flutter/material.dart';

class AppItemsWidget extends StatefulWidget with AppHub {
  AppItemsWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<AppItemsWidget> createState() => _AppItemsWidgetState();
}

class _AppItemsWidgetState extends State<AppItemsWidget> {
  Radius _radius = Radius.circular(16.r);
  bool _isVisible = false;
  bool _isVisibleChild = false;
  double turns = 0.0;
  double _height = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80.h,
          width: 340.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                  bottomLeft: _radius,
                  bottomRight: _radius),
              color: Colors.white),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.r),
                    topRight: Radius.circular(16.r),
                    bottomLeft: _radius,
                    bottomRight: _radius),
              ),
              onTap: () {
                setState(() {
                  _isVisible = !_isVisible;
                  if (_isVisible) {
                    _radius = Radius.zero;
                    turns = 0.5;
                    _height = 50.h;
                    Future.delayed(const Duration(milliseconds: 150), () {
                      setState(() {
                        _isVisibleChild = !_isVisibleChild;
                      });
                    });
                  } else {
                    _isVisibleChild = !_isVisibleChild;
                    _radius = Radius.circular(16.r);
                    turns = 0.0;
                    _height = 0;
                  }
                });
              },
              child: Wrap(
                runSpacing: 16.r,
                direction: Axis.vertical,
                children: [
                  SizedBox(
                      height: 80.h,
                      width: 80.w,
                      child: Padding(
                        padding: EdgeInsets.all(8.sp),
                        child: Image.asset('assets/images/daftapp.png'),
                      )),
                  SizedBox(
                    width: 180.w,
                    height: 80.h,
                    child: Padding(
                      padding: EdgeInsets.all(4.0.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'App Name',
                            style: getText2(color: ColorManager.tone800),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non vehicula risus. ',
                            style: getText4(color: ColorManager.tone600),
                            maxLines: 2,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 80.h,
                      width: 25.w,
                      child: AnimatedRotation(
                          turns: turns,
                          curve: Curves.easeOut,
                          duration: const Duration(milliseconds: 325),
                          child: const Icon(Icons.expand_more))),
                ],
              ),
            ),
          ),
        ),
        AnimatedOpacity(
          opacity: _isVisible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 800),
          curve: Curves.fastLinearToSlowEaseIn,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 800),
            curve: Curves.fastLinearToSlowEaseIn,
            height: _height,
            width: 340.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.zero,
                    topRight: Radius.zero,
                    bottomLeft: Radius.circular(16.r),
                    bottomRight: Radius.circular(16.r)),
                color: Colors.blue[100]),
            child: Material(
              color: Colors.transparent,
              child: Visibility(
                visible: _isVisibleChild,
                child: Wrap(
                  runSpacing: 16.r,
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  runAlignment: WrapAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.sp),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lastest: 10.0.5',
                            style: getText4(color: Colors.blue[600]!),
                          ),
                          Text(
                            'Installed: 10.0.4',
                            style: getText4(color: Colors.blue[600]!),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                            hoverColor: Colors.blue[200],
                            iconSize: 28.sp,
                            highlightColor: Colors.blue[200],
                            onPressed: () {},
                            icon: Icon(
                              Icons.info_outline,
                              color: Colors.blue[700],
                            )),
                        IconButton(
                            highlightColor: Colors.blue[200],
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete_forever,
                              size: 28.sp,
                              color: Colors.blue[700],
                            )),
                        IconButton(
                            highlightColor: Colors.blue[200],
                            onPressed: () {},
                            icon: Icon(
                              Icons.open_in_new,
                              size: 28.sp,
                              color: Colors.blue[700],
                            )),
                        IconButton(
                            highlightColor: Colors.blue[200],
                            onPressed: () {},
                            icon: Icon(
                              Icons.sync,
                              size: 28.sp,
                              color: Colors.blue[700],
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

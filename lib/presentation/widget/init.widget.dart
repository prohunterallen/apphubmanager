import 'package:app_hub_manager/config/environment.dart';
import 'package:app_hub_manager/presentation/widget/preloading.widget.dart';
import 'package:flutter/material.dart';

class Initialization extends StatefulWidget {
  const Initialization({Key? key}) : super(key: key);

  @override
  State<Initialization> createState() => _InitializationState();
}

class _InitializationState extends State<Initialization> {
  @override
  void initState() {
    final nav = Navigator.of(context);
    // final authProv = Provider.of<AuthenProvider>(context, listen: false);
    Future.delayed(const Duration(milliseconds: 3000)).then((value) async {
      //end of everything
      nav.pushNamedAndRemoveUntil(defaultroute, (route) => false);
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    precacheImage(const AssetImage("assets/images/Waihou.png"), context);
    precacheImage(const AssetImage('assets/images/icons.png'), context);
    super.didChangeDependencies();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return PreloadingWithAccerometerWidget();
  // }

  @override
  Widget build(BuildContext context) {
    return PreloadingWidget();
  }
}

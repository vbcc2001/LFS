import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';
import '../f01_config/f01_constant.dart';
import '../f02_utils/f02_menu.dart';
import 'f02_main_scene.dart';

class SplashScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen.timer(
      seconds: 3,
      navigateAfterSeconds: AfterSplash(),
      title: Text(
        AppString.title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: Image.asset(AppImages.logoImg),
      backgroundColor: Colors.white,
      loaderColor: Colors.red,
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MenuController(),
        ),
      ],
      child: MainScene(),
    );
  }
}
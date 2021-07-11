import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'f01_config/f01_constant.dart';
import 'f05_scene/f01_splash_scene.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //关闭调试图标
      debugShowCheckedModeBanner: false,
      //标题
      title: AppString.title,
      //主题
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.background,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: AppColors.secondary,
      ),
      //页面
      home: SplashScene(),
    );
  }
}


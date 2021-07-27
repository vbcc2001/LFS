import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'f01_splash_controller.dart';

class SplashScene extends StatelessWidget {
  final SplashController controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
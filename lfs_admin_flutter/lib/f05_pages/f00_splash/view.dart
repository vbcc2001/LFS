import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class SplashPage extends StatelessWidget {
  final logic = Get.put(SplashLogic());
  final SplashState state = Get.find<SplashLogic>().state;

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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f05_scene/f01_login/f01_login_scene.dart';
import 'package:lfs_admin_flutter/f05_scene/f02_main/f02_main_scene.dart';
import 'package:lfs_admin_flutter/f06_middleware/f01_auth_controller.dart';

class SplashController extends GetxController {
  // var centerView = Rx<Widget>(CircularProgressIndicator());
  @override
  void onReady() async {
    var firebaseUser = Get.find<AuthController>().firebaseUser;
    if (firebaseUser.value != null) {
      Get.offAll(()=>MainScene());
    } else {
      Get.offAll(()=>LoginScene());
    }
    super.onReady();
  }


}
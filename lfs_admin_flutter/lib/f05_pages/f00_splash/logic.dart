import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f05_pages/f01_auth/logic.dart';
import 'package:lfs_admin_flutter/f05_pages/f01_auth/view.dart';
import '../f02_home/view.dart';

import 'state.dart';

class SplashLogic extends GetxController {
  final state = SplashState();
  @override
  void onReady() async {
    var firebaseUser = Get.find<AuthLogic>().firebaseUser;
    if (firebaseUser.value != null) {
      Get.offAll(()=>HomePage());
    } else {
      Get.offAll(()=>AuthPage());
   }
    super.onReady();
  }

}

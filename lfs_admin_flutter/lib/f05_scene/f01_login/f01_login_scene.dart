import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'f01_login_controller.dart';

class LoginScene  extends GetView<LoginSceneController> {
  final LoginSceneController controller = Get.put(LoginSceneController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Get.theme.backgroundColor,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 500, maxHeight: 500),
          child:Obx(()=>controller.centerView.value)
        ),
      ),
    );
  }
}

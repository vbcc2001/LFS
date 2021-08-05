import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class AuthPage extends StatelessWidget {
  final logic = Get.put(AuthLogic());
  final AuthState state = Get.find<AuthLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Get.theme.backgroundColor,
      child: Center(
        child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 500, maxHeight: 500),
            child:Obx(()=>logic.state.centerView.value)
        ),
      ),
    );
  }
}

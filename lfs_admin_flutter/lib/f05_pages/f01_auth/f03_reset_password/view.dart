import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class ResetPasswordPage extends StatelessWidget {
  final logic = Get.put(ResetPasswordLogic());
  final ResetPasswordState state = Get.find<ResetPasswordLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f03_component/f08_loading.dart';


class LoginController extends GetxController {
  static LoginController to = Get.find();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void submit(BuildContext context) async {
      showLoadingIndicator();
      try {
        await _auth.signInWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim());
        emailController.clear();
        passwordController.clear();
        //hideLoadingIndicator();
      } catch (error) {
        //hideLoadingIndicator();
        // Get.snackbar('auth.signInErrorTitle'.tr, 'auth.signInError'.tr,
        //     snackPosition: SnackPosition.TOP,
        //     showProgressIndicator:true,
        //     duration: Duration(seconds: 7),
        //     backgroundColor: Get.theme.snackBarTheme.backgroundColor,
        //     colorText: Get.theme.snackBarTheme.actionTextColor);
      }
  }

  String? mailValidator(String? value) {
    if (!GetUtils.isEmail(value!))
      return 'validator.email'.tr;
    else
      return null;
  }

  String? passwordValidator(String? value) {
    String pattern = r'^.{6,}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!))
      return 'validator.password'.tr;
    else
      return null;
  }
}
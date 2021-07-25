import 'package:flutter/material.dart';
import 'dart:core';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class LoginController extends GetxController {
  static LoginController to = Get.find();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool enableDebugLogin = kDebugMode; // && false;
  String get _defaultEmail => enableDebugLogin ? "lfs@lfs.com" : "";
  String get _defaultPass => enableDebugLogin ? "lfs@lfs.com" : "";

  @override
  void onReady() async {
    emailController = TextEditingController(text: _defaultEmail);
    passwordController = TextEditingController(text: _defaultPass);
    super.onReady();
  }
  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }


  void submit(BuildContext context) async {
    String email =  emailController.text.trim();
    String password =  passwordController.text.trim();
    try {
      Get.snackbar(''.tr, ''.tr,
          snackPosition: SnackPosition.TOP,
          showProgressIndicator:true,
          backgroundColor: Get.theme.snackBarTheme.backgroundColor,
          colorText: Get.theme.snackBarTheme.actionTextColor);
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

}
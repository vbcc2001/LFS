import 'package:flutter/material.dart';
import 'dart:core';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:lfs_admin_flutter/f03_component/f09_snackbar.dart';
import 'package:lfs_admin_flutter/f03_component/f10_loading.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var submitLock = Rx<bool>(false);
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
    submitLock.value = true;
    try {
      await _auth.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
      emailController.clear();
      passwordController.clear();
    } catch (error) {
      AppSnackbar.show("登录错误",error.toString());
    } finally{
      submitLock.value = false;
    }
  }

}
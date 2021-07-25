import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f02_utils/f03_gravatar.dart';
import 'package:lfs_admin_flutter/f07_models/f01_user.dart';


class ResetPasswordController extends GetxController {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

// //password reset email
// Future<void> sendPasswordResetEmail(BuildContext context) async {
//   showLoadingIndicator();
//   try {
//     await _auth.sendPasswordResetEmail(email: emailController.text);
//     hideLoadingIndicator();
//     Get.snackbar(
//         'auth.resetPasswordNoticeTitle'.tr, 'auth.resetPasswordNotice'.tr,
//         snackPosition: SnackPosition.BOTTOM,
//         duration: Duration(seconds: 5),
//         backgroundColor: Get.theme.snackBarTheme.backgroundColor,
//         colorText: Get.theme.snackBarTheme.actionTextColor);
//   } on FirebaseAuthException catch (error) {
//     hideLoadingIndicator();
//     Get.snackbar('auth.resetPasswordFailed'.tr, error.message!,
//         snackPosition: SnackPosition.BOTTOM,
//         duration: Duration(seconds: 10),
//         backgroundColor: Get.theme.snackBarTheme.backgroundColor,
//         colorText: Get.theme.snackBarTheme.actionTextColor);
//   }
// }
//


}
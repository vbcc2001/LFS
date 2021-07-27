import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLoading {
  static show(){
    Get.snackbar(''.tr, ''.tr,
        duration: Duration(seconds: 7),
        borderRadius: 0,
        showProgressIndicator:true,
        margin: EdgeInsets.symmetric(horizontal: 0),
        backgroundColor: Get.theme.snackBarTheme.backgroundColor,
        colorText: Get.theme.snackBarTheme.actionTextColor);
  }
}

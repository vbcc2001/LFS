import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSnackbar {
  static show(String title,String message){
    Get.snackbar(title.tr, message.tr,
        duration: Duration(seconds: 7),
        borderRadius: 0,
        icon:Icon(Icons.warning),
        margin: EdgeInsets.symmetric(horizontal: 0),
        backgroundColor: Get.theme.snackBarTheme.backgroundColor,
        colorText: Get.theme.snackBarTheme.actionTextColor);
  }
}
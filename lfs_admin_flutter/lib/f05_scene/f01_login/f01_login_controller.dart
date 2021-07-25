import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'f01_view/f01_register_view.dart';
import 'f01_view/f02_login_view.dart';
import 'f01_view/f03_reset_password_view.dart';

enum LoginSceneType {
  Login,
  Register,
  ResetPassword,
}

class LoginSceneController extends GetxController {
  var _sceneType = LoginSceneType.Login.obs;
  void sceneType(LoginSceneType value) {
    _sceneType.value =value;
  }
  //set sceneType(value) => _sceneType.value =value;
  Widget getView(){
    switch(_sceneType.value){
      case LoginSceneType.Login: return LoginView();
      case LoginSceneType.Register: return RegisterView();
      case LoginSceneType.Login: return ResetPasswordView();
      default: return LoginView();
    }
  }
}
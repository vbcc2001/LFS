import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f02_utils/f03_gravatar.dart';
import 'package:lfs_admin_flutter/f07_models/f01_user.dart';


class RegisterController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;


  bool enableDebugLogin = kDebugMode; // && false;
  String get _defaultName => enableDebugLogin ? "lfs" : "";
  String get _defaultEmail => enableDebugLogin ? "lfs@lfs.com" : "";
  String get _defaultPass => enableDebugLogin ? "lfs@lfs.com" : "";

  @override
  void onReady() async {
    nameController = TextEditingController(text: _defaultName);
    emailController = TextEditingController(text: _defaultEmail);
    passwordController = TextEditingController(text: _defaultPass);
    super.onReady();
  }
  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
  void submit(BuildContext context) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text)
          .then((result) async {
        print('uID: ' + result.user!.uid.toString());
        print('email: ' + result.user!.email.toString());
        //get photo url from gravatar if user has one
        Gravatar gravatar = Gravatar(emailController.text);
        String gravatarUrl = gravatar.imageUrl(
          size: 200,
          defaultImage: GravatarImage.retro,
          rating: GravatarRating.pg,
          fileExtension: true,
        );
        //create the new user object
        UserModel _newUser = UserModel(
            uid: result.user!.uid,
            email: result.user!.email!,
            name: nameController.text,
            photoUrl: gravatarUrl);
        //create the user in firestore
        _db.doc('/users/${result.user!.uid}').set(_newUser.toJson());
        update();
        emailController.clear();
        passwordController.clear();
      });
    } on FirebaseAuthException catch (error) {
      Get.snackbar('auth.signUpErrorTitle'.tr, error.message!,
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(seconds: 10),
          backgroundColor: Get.theme.snackBarTheme.backgroundColor,
          colorText: Get.theme.snackBarTheme.actionTextColor);
    }
  }
  String? nameValidator(String? value) {
    String pattern = r"^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$";
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!))
      return 'validator.name'.tr;
    else
      return null;
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
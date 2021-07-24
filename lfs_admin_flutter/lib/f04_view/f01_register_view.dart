import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f02_utils/f03_gravatar.dart';
import 'package:lfs_admin_flutter/f03_component/f06_logo_graphic_header.dart';
import 'package:lfs_admin_flutter/f03_component/f07_form_input_field_with_icon.dart';
import 'package:lfs_admin_flutter/f07_models/f01_user.dart';

import 'f02_login_view.dart';

class RegisterView extends GetView<RegisterController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  LogoGraphicHeader(),
                  SizedBox(height: 48.0),
                  FormInputFieldWithIcon(
                    controller: controller.nameController,
                    iconPrefix: Icons.person,
                    labelText: '用户名'.tr,
                    validator: controller.nameValidator,
                    onChanged: (value) => null,
                    onSaved: (value) => controller.nameController.text = value!,
                  ),
                  SizedBox(height: 24),
                  FormInputFieldWithIcon(
                    controller: controller.emailController,
                    iconPrefix: Icons.email,
                    labelText: '邮箱'.tr,
                    validator: controller.mailValidator,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) => null,
                    onSaved: (value) => controller.emailController.text = value!,
                  ),
                  SizedBox(height: 24),
                  FormInputFieldWithIcon(
                    controller: controller.passwordController,
                    iconPrefix: Icons.lock,
                    labelText: '密码'.tr,
                    validator: controller.passwordValidator,
                    obscureText: true,
                    onChanged: (value) => null,
                    onSaved: (value) => controller.passwordController.text = value!,
                    maxLines: 1,
                  ),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        SystemChannels.textInput.invokeMethod(
                            'TextInput.hide'); //to hide the keyboard - if any
                        controller.submit(context);
                      }
                    },
                    child: Text('注册',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 24),
                  TextButton(
                    child: Text('账号登录'.tr),
                    onPressed: () => Get.to(LoginView()),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  @override
  void onReady() async {
    super.onReady();
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
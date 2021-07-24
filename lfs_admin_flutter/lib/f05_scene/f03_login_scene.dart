import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:core';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f03_component/f06_logo_graphic_header.dart';
import 'package:lfs_admin_flutter/f03_component/f07_form_input_field_with_icon.dart';
import 'package:lfs_admin_flutter/f05_scene/f02_main_scene.dart';
import 'package:lfs_admin_flutter/f06_middleware/f02_login_controller.dart';

class LoginScene extends StatelessWidget {
  final LoginController loginController = LoginController.to;
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
                    controller: loginController.emailController,
                    iconPrefix: Icons.email,
                    labelText: '邮箱'.tr,
                    validator: loginController.mailValidator,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) => null,
                    onSaved: (value) => loginController.emailController.text = value!,
                  ),
                  SizedBox(height: 24),
                  FormInputFieldWithIcon(
                    controller: loginController.passwordController,
                    iconPrefix: Icons.lock,
                    labelText: '密码'.tr,
                    validator: loginController.passwordValidator,
                    obscureText: true,
                    onChanged: (value) => null,
                    onSaved: (value) =>  loginController.passwordController.text = value!,
                    maxLines: 1,
                  ),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        loginController.submit(context);
                      }
                    },
                    child: Text('登陆',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 24),
                  TextButton(
                    child: Text('忘记密码'.tr),
                    onPressed: () => Get.to(MainScene()),
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
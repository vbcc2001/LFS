import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:core';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f03_component/f06_logo_graphic_header.dart';
import 'package:lfs_admin_flutter/f03_component/f07_form_input_field_with_icon.dart';
import 'package:lfs_admin_flutter/f04_view/f01_register_view.dart';
import 'package:lfs_admin_flutter/f05_scene/f02_main_scene.dart';

import 'f02_login_controller.dart';

class LoginView extends GetView<LoginController> {
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
                    controller: controller.emailController,
                    iconPrefix: Icons.email,
                    labelText: '邮箱'.tr,
                    validator: RegisterController().mailValidator,

                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) => null,
                    onSaved: (value) => controller.emailController.text = value!,
                  ),
                  SizedBox(height: 24),
                  FormInputFieldWithIcon(
                    controller: controller.passwordController,
                    iconPrefix: Icons.lock,
                    labelText: '密码'.tr,
                    validator: RegisterController().passwordValidator,
                    obscureText: true,
                    onChanged: (value) => null,
                    onSaved: (value) =>  controller.passwordController.text = value!,
                    maxLines: 1,
                  ),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        controller.submit(context);
                      }
                    },
                    child: Text('登录',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 24),
                  TextButton(
                    child: Text('忘记密码'.tr),
                    onPressed: () => Get.to(MainScene()),
                  ),
                  TextButton(
                    child: Text('账号注册'.tr),
                    onPressed: () => Get.to(RegisterView()),
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


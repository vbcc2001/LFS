import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:lfs_admin_flutter/f03_component/f06_logo_graphic_header.dart';
import 'package:lfs_admin_flutter/f03_component/f07_form_input_field_with_icon.dart';

import '../f01_login_controller.dart';
import 'f01_register_controller.dart';
import 'f02_login_view.dart';

class RegisterView extends GetView<RegisterController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final RegisterController controller = Get.put(RegisterController());
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
                    child: Obx((){
                      if(controller.submitLock.value){
                        return SizedBox(
                          child: CircularProgressIndicator(),
                          height: 16.0,
                          width: 16.0,
                        );
                      }else{
                        return Text('注册',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        );
                      }
                    }),
                  ),
                  SizedBox(height: 24),
                  TextButton(
                    child: Text('账号登录'.tr),
                    onPressed: () => Get.find<LoginSceneController>().centerView.value = LoginView(),
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

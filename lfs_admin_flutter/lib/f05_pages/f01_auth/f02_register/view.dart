import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f03_component/f06_logo_graphic_header.dart';
import 'package:lfs_admin_flutter/f03_component/f07_form_input_field_with_icon.dart';
import 'package:lfs_admin_flutter/f05_pages/f01_auth/f01_login/view.dart';
import 'package:lfs_admin_flutter/f05_pages/f01_auth/view.dart';

import 'logic.dart';
import 'state.dart';

class RegisterPage extends StatelessWidget {
  final logic = Get.put(RegisterLogic());
  final RegisterState state = Get.find<RegisterLogic>().state;
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
                    controller: logic.nameController,
                    iconPrefix: Icons.person,
                    labelText: 'auth.nameFormField'.tr,
                    validator: logic.nameValidator,
                    onChanged: (value) => null,
                    onSaved: (value) => logic.nameController.text = value!,
                  ),
                  SizedBox(height: 24),
                  FormInputFieldWithIcon(
                    controller: logic.emailController,
                    iconPrefix: Icons.email,
                    labelText: 'auth.emailFormField'.tr,
                    validator: logic.mailValidator,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) => null,
                    onSaved: (value) => logic.emailController.text = value!,
                  ),
                  SizedBox(height: 24),
                  FormInputFieldWithIcon(
                    controller: logic.passwordController,
                    iconPrefix: Icons.lock,
                    labelText: 'auth.passwordFormField'.tr,
                    validator: logic.passwordValidator,
                    obscureText: true,
                    onChanged: (value) => null,
                    onSaved: (value) => logic.passwordController.text = value!,
                    maxLines: 1,
                  ),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        SystemChannels.textInput.invokeMethod(
                            'TextInput.hide'); //to hide the keyboard - if any
                        logic.submit(context);
                      }
                    },
                    child: Obx((){
                      if(logic.submitLock.value){
                        return SizedBox(
                          child: CircularProgressIndicator(),
                          height: 16.0,
                          width: 16.0,
                        );
                      }else{
                        return Text('auth.signUpButton'.tr,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        );
                      }
                    }),
                  ),
                  SizedBox(height: 24),
                  TextButton(
                    child: Text('auth.signInLabelButton'.tr),
                    onPressed: () => Get.find<AuthPage>().state.centerView.value = LoginPage(),
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

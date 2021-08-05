import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f03_component/f06_logo_graphic_header.dart';
import 'package:lfs_admin_flutter/f03_component/f07_form_input_field_with_icon.dart';
import 'package:lfs_admin_flutter/f05_pages/f01_auth/f02_register/logic.dart';
import 'package:lfs_admin_flutter/f05_pages/f01_auth/f02_register/view.dart';
import 'package:lfs_admin_flutter/f05_pages/f01_auth/f03_reset_password/view.dart';

import '../logic.dart';
import 'logic.dart';
import 'state.dart';

class LoginPage extends StatelessWidget {
  final logic = Get.put(LoginLogic());
  final LoginState state = Get.find<LoginLogic>().state;
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
                    controller: logic.emailController,
                    iconPrefix: Icons.email,
                    labelText: 'auth.emailFormField'.tr,
                    validator: RegisterLogic().mailValidator,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) => null,
                    onSaved: (value) => logic.emailController.text = value!,
                  ),
                  SizedBox(height: 24),
                  FormInputFieldWithIcon(
                    controller: logic.passwordController,
                    iconPrefix: Icons.lock,
                    labelText: 'auth.passwordFormField'.tr,
                    validator: RegisterLogic().passwordValidator,
                    obscureText: true,
                    onChanged: (value) => null,
                    onSaved: (value) =>  logic.passwordController.text = value!,
                    maxLines: 1,
                  ),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate() && !logic.submitLock.value) {
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
                        return Text('auth.signInButton'.tr,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        );
                      }
                    }),
                  ),
                  SizedBox(height: 24),
                  TextButton(
                    child: Text('auth.resetPasswordLabelButton'.tr),
                    onPressed: () =>  Get.find<AuthLogic>().state.centerView.value = ResetPasswordPage(),
                  ),
                  TextButton(
                    child: Text('auth.signUpLabelButton'.tr),
                    onPressed: () => Get.find<AuthLogic>().state.centerView.value = RegisterPage(),
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

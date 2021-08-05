import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f02_utils/f03_gravatar.dart';
import 'package:lfs_admin_flutter/f03_component/f09_snackbar.dart';
import 'package:lfs_admin_flutter/f05_pages/f01_auth/logic.dart';
import '../../f02_home/view.dart';
import 'package:lfs_admin_flutter/f07_models/f01_user.dart';

import 'state.dart';

class RegisterLogic extends GetxController {
  final state = RegisterState();
  TextEditingController nameController = TextEditingController(text:kDebugMode ? "lfs" : "");
  TextEditingController emailController = TextEditingController(text:kDebugMode ? "lfs@lfs.com" : "");
  TextEditingController passwordController = TextEditingController(text:kDebugMode ? "lfs@lfs.com" : "");
  var submitLock = Rx<bool>(false);
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  @override
  void onReady()  {
    super.onReady();
  }
  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void createUserInFirestore(User user) async {
    Gravatar gravatar = Gravatar(emailController.text);
    String gravatarUrl = gravatar.imageUrl(
      size: 200,
      defaultImage: GravatarImage.retro,
      rating: GravatarRating.pg,
      fileExtension: true,
    );
    //create the new user object
    UserModel _newUser = UserModel(
        uid: user.uid,
        email: user.email!,
        name: nameController.text,
        photoUrl: gravatarUrl);
    _db.doc('/users/${user.uid}').set(_newUser.toJson());
    update();
  }

  void submit(BuildContext context) async {
    try {
      print('email: ' + emailController.text);
      submitLock.value = true;
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      print('uID: ' + userCredential.user!.uid.toString());
      print('email: ' + userCredential.user!.email.toString());
      Get.find<AuthLogic>().firebaseUser.value=userCredential.user;
      createUserInFirestore(userCredential.user!);
      Get.offAll(()=>HomePage());
      nameController.clear();
      emailController.clear();
      passwordController.clear();
    } on FirebaseAuthException catch (error) {
      AppSnackbar.show("",error.message!);
    } finally {
      submitLock.value = false;
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

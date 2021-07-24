import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f01_config/f03_core_package.dart';
import 'package:lfs_admin_flutter/f05_scene/f01_splash_scene.dart';
import 'package:lfs_admin_flutter/f05_scene/f02_main_scene.dart';
import 'package:lfs_admin_flutter/f05_scene/f03_login_scene.dart';

class AppRoutes {
  AppRoutes._(); //this is to prevent anyone from instantiating this object
  static final routes = [
    GetPage(name: '/', page: () => SplashScene()),
    GetPage(name: '/login', page: () => LoginScene()),
    GetPage(name: '/main', page: () => MainScene()),
    // GetPage(name: '/signin', page: () => SignInUI()),
    // GetPage(name: '/signup', page: () => SignUpUI()),
    // GetPage(name: '/home', page: () => HomeUI()),
    // GetPage(name: '/settings', page: () => SettingsUI()),
    // GetPage(name: '/reset-password', page: () => ResetPasswordUI()),
    // GetPage(name: '/update-profile', page: () => UpdateProfileUI()),
  ];
}
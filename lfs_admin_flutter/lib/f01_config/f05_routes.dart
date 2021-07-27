import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f01_config/f03_core_package.dart';
import 'package:lfs_admin_flutter/f05_scene/f01_login/f01_login_scene.dart';
import 'package:lfs_admin_flutter/f05_scene/f00_splash/f01_splash_scene.dart';
import 'package:lfs_admin_flutter/f05_scene/f02_main/f02_main_scene.dart';


abstract class AppRoutes {
  static const Root = '/';
  static const Login = '/login';
  static const Main = '/main';
}

class AppPages {
  AppPages._(); //this is to prevent anyone from instantiating this object
  static final routes = [
    GetPage(name: AppRoutes.Root, page: () => SplashScene()),
    GetPage(name: AppRoutes.Login, page: () => LoginScene()),
    GetPage(name: AppRoutes.Main, page: () => MainScene()),
    // GetPage(name: '/signin', page: () => SignInUI()),
    // GetPage(name: '/signup', page: () => SignUpUI()),
    // GetPage(name: '/home', page: () => HomeUI()),
    // GetPage(name: '/settings', page: () => SettingsUI()),
    // GetPage(name: '/reset-password', page: () => ResetPasswordUI()),
    // GetPage(name: '/update-profile', page: () => UpdateProfileUI()),
  ];
}




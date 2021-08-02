import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f05_scene/f00_splash/view.dart';
import 'package:lfs_admin_flutter/f05_scene/f01_auth/view.dart';
import 'package:lfs_admin_flutter/f05_scene/f02_main/f01_home/view.dart';



abstract class AppRoutes {
  static const Root = '/';
  static const Login = '/login';
  static const Main = '/main';
}

class AppPages {
  AppPages._(); //this is to prevent anyone from instantiating this object
  static final routes = [
    GetPage(name: AppRoutes.Root, page: () => SplashPage()),
    GetPage(name: AppRoutes.Login, page: () => AuthPage()),
    GetPage(name: AppRoutes.Main, page: () => HomePage()),
    // GetPage(name: '/signin', page: () => SignInUI()),
    // GetPage(name: '/signup', page: () => SignUpUI()),
    // GetPage(name: '/home', page: () => HomeUI()),
    // GetPage(name: '/settings', page: () => SettingsUI()),
    // GetPage(name: '/reset-password', page: () => ResetPasswordUI()),
    // GetPage(name: '/update-profile', page: () => UpdateProfileUI()),
  ];
}




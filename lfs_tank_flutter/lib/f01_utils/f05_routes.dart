import 'package:get/get.dart';
import 'package:lfs_tank_flutter/f06_pages/f00_splash/view.dart';
import 'package:lfs_tank_flutter/f06_pages/f01_game/view.dart';



abstract class AppRoutes {
  static const root = '/';
  static const login = '/login';
  static const main = '/main';
}

class AppPages {
  AppPages._(); //this is to prevent anyone from instantiating this object
  static final routes = [
    GetPage(name: AppRoutes.root, page: () => SplashPage()),
    GetPage(name: AppRoutes.login, page: () => SplashPage()),
    GetPage(name: AppRoutes.main, page: () => GamePage()),
    // GetPage(name: '/signin', page: () => SignInUI()),
    // GetPage(name: '/signup', page: () => SignUpUI()),
    // GetPage(name: '/home', page: () => HomeUI()),
    // GetPage(name: '/settings', page: () => SettingsUI()),
    // GetPage(name: '/reset-password', page: () => ResetPasswordUI()),
    // GetPage(name: '/update-profile', page: () => UpdateProfileUI()),
  ];
}




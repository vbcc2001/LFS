import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lfs_admin_flutter/f01_config/f03_core_package.dart';

import 'f02_utils/f01_logger.dart';
import 'f04_view/f01_register_view.dart';
import 'f04_view/f02_login_controller.dart';
import 'f06_middleware/f01_auth_controller.dart';
import 'f06_middleware/f04_theme_controller.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  Get.put<AuthController>(AuthController());
  Get.put<LoginController>(LoginController());
  Get.put<RegisterController>(RegisterController());
  Get.put<ThemeController>(ThemeController());
  //Get.put<LanguageController>(LanguageController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //标题
      title: AppString.title,
      //主题
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.background,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: AppColors.secondary,
      ),
      enableLog: true,
      logWriterCallback: Logger.write,
      initialRoute: "/", //initial
      getPages: AppRoutes.routes,
      //locale: TranslationService.locale,
      //fallbackLocale: TranslationService.fallbackLocale,
      //translations: TranslationService(),
    );
  }
}





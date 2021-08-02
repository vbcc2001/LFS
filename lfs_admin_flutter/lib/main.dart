import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lfs_admin_flutter/f01_config/f03_core_package.dart';
import 'package:lfs_admin_flutter/f05_pages/f01_auth/logic.dart';

import 'f01_config/f02_theme_01.dart';
import 'f01_config/f07_localization.g.dart';
import 'f02_utils/f01_logger.dart';
import 'f06_middleware/f02_language_controller.dart';
import 'f06_middleware/f04_theme_controller.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  Get.put<AuthLogic>(AuthLogic());
  Get.put<ThemeController>(ThemeController());
  Get.put<LanguageController>(LanguageController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ThemeController.to.getThemeModeFromStore();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //标题
      title: AppString.title,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system,
      enableLog: true,
      logWriterCallback: Logger.write,
      initialRoute: AppRoutes.Root, //initial
      getPages: AppPages.routes,
      locale: LanguageController.to.getLocale,
      //fallbackLocale: TranslationService.fallbackLocale,
      translations: Localization(),
    );
  }
}





import 'package:flutter/material.dart';
import 'package:lfs_admin_flutter/f01_config/f01_constant.dart';
import 'package:lfs_admin_flutter/f06_middleware/f04_theme_controller.dart';


class LogoGraphicHeader extends StatelessWidget {
  LogoGraphicHeader();
  final ThemeController themeController = ThemeController.to;

  @override
  Widget build(BuildContext context) {
    String _imageLogo = AppImages.logoTransparent;
    if (themeController.isDarkModeOn == true) {
      _imageLogo = AppImages.logoTransparent;
    }
    return Hero(
      tag: 'App Logo',
      child: CircleAvatar(
          foregroundColor: Colors.blue,
          backgroundColor: Colors.transparent,
          radius: 60.0,
          child: ClipOval(
            child: Image.asset(
              _imageLogo,
              fit: BoxFit.cover,
              width: 120.0,
              height: 120.0,
            ),
          )),
    );
  }
}
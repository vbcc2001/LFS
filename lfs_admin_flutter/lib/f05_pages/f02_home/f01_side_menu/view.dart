import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f01_config/f01_constant.dart';
import 'package:lfs_admin_flutter/f01_config/f03_core_package.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f02_header/logic.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f99_main/view.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f03_movies/view.dart';

import '../logic.dart';
import 'logic.dart';
import 'state.dart';

class SideMenuPage extends StatelessWidget {
  final SideMenuLogic logic = Get.put(SideMenuLogic());
  final SideMenuState state = Get.find<SideMenuLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset(AppImages.twitterHeaderPhoto2),
          ),
          DrawerListTile(
            title: "主页",
            icon: AppIcons.stat,
            press: () {
              Get.find<HeaderLogic>().title='主页';
              Get.find<HomeLogic>().mainPage = MainPage();
              },
          ),
          DrawerListTile(
            title: "电影",
            icon: AppIcons.movies,
            press: () {
              Get.find<HeaderLogic>().title='电影';
              Get.find<HomeLogic>().mainPage = MoviesPage();
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String title;
  final Widget icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: icon,
      title: Text(title),
    );
  }
}
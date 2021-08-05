import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f01_config/f01_constant.dart';
import 'package:lfs_admin_flutter/f01_config/f03_core_package.dart';


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
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "任务",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: AppIcons.stat,
      // SvgPicture.asset(
      //   svgSrc,
      //   // color: Colors.white54,
      //   height: 16,
      // ),
      title: Text(
        title,
        // style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
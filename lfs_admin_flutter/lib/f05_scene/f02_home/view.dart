import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f01_config/f04_responsive.dart';
import 'package:lfs_admin_flutter/f05_scene/f02_home/f01_view/f02_dashboard_scene.dart';
import 'package:lfs_admin_flutter/f05_scene/f02_home/f02_side_menu/view.dart';
import 'package:lfs_admin_flutter/f05_scene/f02_home/state.dart';

import 'logic.dart';


class HomePage extends StatelessWidget {
  final HomeLogic logic = Get.put(HomeLogic());
  final HomeState state = Get.find<HomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenuPage(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenuPage(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

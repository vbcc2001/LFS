import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f01_config/f01_constant.dart';
import 'package:lfs_admin_flutter/f01_config/f04_responsive.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f01_side_menu/view.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/state.dart';
import 'f02_header/view.dart';
import 'logic.dart';


class HomePage extends StatelessWidget {
  final HomeLogic logic = Get.put(HomeLogic());
  final HomeState state = Get.find<HomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: logic.scaffoldKey,
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
              child: SafeArea(
                child: Container(
                  padding: EdgeInsets.all(AppStyles.defaultPadding),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      HeaderPage(),
                      SizedBox(height: AppStyles.defaultPadding),
                      Divider(height: 1.0, color: Colors.red,),
                      Expanded(
                        child:Obx(() => state.mainPage.value)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

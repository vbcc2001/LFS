import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../f04_view/f02_dashboard_scene.dart';
import '../f02_utils/f02_menu.dart';
import '../f02_utils/f01_responsive.dart';
import '../f03_component/f01_side_menu.dart';

class MainScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
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

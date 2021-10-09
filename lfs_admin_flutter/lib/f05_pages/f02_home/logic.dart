import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/state.dart';
class HomeLogic extends GetxController {
  final state = HomeState();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  set mainPage(Widget widget){
    state.mainPage.value = widget;
  }

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }
}
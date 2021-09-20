import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:lfs_admin_flutter/f01_config/f03_core_package.dart';
import 'package:lfs_admin_flutter/f05_pages/f01_auth/view.dart';

import 'f03_movies/view.dart';

class HomeState {

  // final mainPage = Rx<Widget>(Center(
  //   child: CircularProgressIndicator(),
  // ));
  final mainPage = Rx<Widget>(MoviesPage());
  HomeState() {
    ///Initialize variables
  }
}

import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:lfs_admin_flutter/f05_pages/f01_auth/f01_login/view.dart';

class AuthState {
  var centerView = Rx<Widget>(LoginPage());
  AuthState() {
    ///Initialize variables
  }
}

import 'package:flutter/material.dart';
import 'package:lfs_admin_flutter/f04_view/f02_login_view.dart';

class LoginScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 500, maxHeight: 500),
          child:LoginView(),
        ),
      ),
    );
  }
}

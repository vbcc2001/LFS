import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f01_config/f01_constant.dart';
import 'package:lfs_admin_flutter/f01_config/f04_responsive.dart';
import 'package:lfs_admin_flutter/f03_component/f01_storage_details/storage_details.dart';
import 'package:lfs_admin_flutter/f03_component/f02_my_files/f03_my_files.dart';
import 'package:lfs_admin_flutter/f03_component/f05_recent_files.dart';

import 'logic.dart';
import 'state.dart';

class MainPage extends StatelessWidget {
  final MainLogic logic = Get.put(MainLogic());
  final MainState state = Get.find<MainLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 5,
          child: Column(
            children: [
              MyFiles(),
              SizedBox(height: AppStyles.defaultPadding),
              RecentFiles(),
              if (Responsive.isMobile(context))
                SizedBox(height: AppStyles.defaultPadding),
              if (Responsive.isMobile(context)) StarageDetails(),
            ],
          ),
        ),
        if (!Responsive.isMobile(context))
          SizedBox(width: AppStyles.defaultPadding),
        // On Mobile means if the screen is less than 850 we dont want to show it
        if (!Responsive.isMobile(context))
          Expanded(
            flex: 2,
            child: StarageDetails(),
          ),
      ],
    );
  }
}

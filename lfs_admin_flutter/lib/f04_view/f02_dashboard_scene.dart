
import 'package:flutter/material.dart';
import '../f01_config/f01_constant.dart';
import '../f02_utils/f01_responsive.dart';
import '../f03_component/f02_my_files/f03_my_files.dart';
import '../f03_component/f05_recent_files.dart';
import '../f03_component/f02_header.dart';
import '../f03_component/f01_storage_details/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(AppStyles.defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: AppStyles.defaultPadding),
            Row(
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
            )
          ],
        ),
      ),
    );
  }
}

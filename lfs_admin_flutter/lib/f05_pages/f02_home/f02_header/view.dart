import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lfs_admin_flutter/f01_config/f01_constant.dart';
import 'package:lfs_admin_flutter/f01_config/f04_responsive.dart';

import '../logic.dart';
import 'logic.dart';
import 'state.dart';

class HeaderPage extends StatelessWidget {
  final HeaderLogic logic = Get.put(HeaderLogic());
  final HeaderState state = Get.find<HeaderLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(Icons.menu),
            onPressed:  Get.find<HomeLogic>().controlMenu,
          ),
        if (!Responsive.isMobile(context))
          Obx(() => Text(
            "${state.title}",
            style: Theme.of(context).textTheme.headline6
          )),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        Expanded(child: SearchField()),
        ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: AppStyles.defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: AppStyles.defaultPadding,
        vertical: AppStyles.defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        // color: AppColors.secondary,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        // border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          AppIcons.person,
          if (!Responsive.isMobile(context))
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: AppStyles.defaultPadding / 2),
              child: Text("Angelina Joli"),
            ),
          AppIcons.arrow_down,
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        // fillColor: AppColors.secondary,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(AppStyles.defaultPadding * 0.75),
            margin: EdgeInsets.symmetric(horizontal: AppStyles.defaultPadding / 2),
            decoration: BoxDecoration(
              // color: AppColors.primary,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: AppIcons.search,
          ),
        ),
      ),
    );
  }
}
import 'package:castle_app/features/core/screens/explore/widgets/bottom_nav_widget.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../../constant/colors.dart';
import '../../../controllers/main_controller.dart';

class BottomNavBar extends GetView<MainController> {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: tSecondaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            BottomNavWidget(
              onTap: () => controller.changePageIndex(0),
              icon: controller.pageIndex == 0
                  ? CommunityMaterialIcons.home
                  : CommunityMaterialIcons.home_outline,
            ),
            BottomNavWidget(
              onTap: () {
                controller.changePageIndex(1);
              },
              icon: controller.pageIndex == 1
                  ? Ionicons.albums
                  : Ionicons.albums_outline,
            ),
            BottomNavWidget(
              onTap: () {
                controller.changePageIndex(2);
              },
              icon: controller.pageIndex == 2
                  ? CommunityMaterialIcons.chart_box
                  : CommunityMaterialIcons.chart_box_outline,
            ),
            BottomNavWidget(
              onTap: () => controller.changePageIndex(3),
              icon: controller.pageIndex == 3
                  ? CommunityMaterialIcons.account
                  : CommunityMaterialIcons.account_outline,
            ),
          ],
        )
      ),
      ),
    ));
  }
}

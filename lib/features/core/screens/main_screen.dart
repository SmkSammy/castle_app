import 'package:castle_app/features/core/controllers/explore_controller.dart';
import 'package:castle_app/features/core/screens/favorite/favorite.dart';
import 'package:castle_app/features/core/screens/notification/notification.dart';
import 'package:castle_app/features/core/screens/profile/profile_screen.dart';
import 'package:castle_app/features/core/screens/wallet/wallet.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../../../constant/image_strings.dart';
import '../controllers/main_controller.dart';
import '../controllers/sidebar_controller.dart';
import 'application/application.dart';
import 'explore/explore.dart';
import 'explore/widgets/appbar.dart';
import 'explore/widgets/bottom_nav_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final SidebarController sidebarController = Get.put(SidebarController());
    final ExploreController dashboardController =
        Get.put(ExploreController());
        MainController mainController = Get.put(MainController());

    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
        key: sidebarController.scaffoldKey,
        // backgroundColor: Colors.white,
        // appBar: DashboardAppBar(
        //   controller: sidebarController,
        // ),
        bottomNavigationBar: const BottomNavBar(),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: const Image(image: AssetImage(tuserProfileImage)),
                  ),
                ),
              ),
            
              SideMenuItemWidget(
                title: 'Dashoard',
                icon: Icons.home,
                onPress: () => {},
              ),
              SideMenuItemWidget(
                title: 'Transactions History',
                icon: CommunityMaterialIcons.file_document,
                onPress: () => {},
              ),
              SideMenuItemWidget(
                title: 'Loans',
                icon: CommunityMaterialIcons.folder_open,
                onPress: () => {},
              ),
              SideMenuItemWidget(
                title: 'Loan Application',
                icon: CommunityMaterialIcons.credit_card,
                onPress: () => {},
              ),
              SideMenuItemWidget(
                title: 'Savings',
                icon: Icons.money,
                onPress: () => {},
              ),
              SideMenuItemWidget(
                title: 'Change Password',
                icon: CommunityMaterialIcons.fingerprint,
                onPress: () => {},
              ),
              SideMenuItemWidget(
                title: 'Logout',
                icon: CommunityMaterialIcons.logout,
                onPress: () => {},
                textColor: Colors.red,
                endIcon: false,
              ),
              // ListTile(
              //   title: const Text('Profile'),
              //   onTap: () {
              //     // sidebarController.changeTabIndex(1);
              //     Get.back();
              //   },
              // ),

              // ListTile(
              //   title: const Text('Transactions'),
              //   onTap: () {
              //     // sidebarController.changeTabIndex(1);
              //     Get.back();
              //   },
              // ),

              // ListTile(
              //   title: const Text('Loan Application'),
              //   onTap: () {
              //     // sidebarController.changeTabIndex(1);
              //     Get.back();
              //   },
              // ),

              // ListTile(
              //   title: const Text('Loans'),
              //   onTap: () {
              //     // sidebarController.changeTabIndex(1);
              //     Get.back();
              //   },
              // ),
              // Add more list tiles for additional pages
            ],
          ),
        ),

        // body: SizedBox.expand(
        //   child: PageView(
        //       controller: mainController.pageController,
        //       onPageChanged: (index) {
        //         mainController.changePageIndex(index);
        //         //
        //       },
        //       children: [
        //         // Dashboard(),
        //         //       ApplicationScreen(),
        //         //       TransactionScreen(),
        //         //       ProfileScreen()

        //         Container(
        //           color: Colors.black,
        //         ),
        //         Container(
        //           color: Colors.red,
        //         ),
        //         Container(
        //           color: Colors.white,
        //         ),
        //         Container(
        //           color: Colors.green,
        //         )
        //       ],
        //       ),
              
        // ),
        body: SafeArea(
          child: Obx(() => IndexedStack(
                  index: mainController.pageIndex.value,
                  children: const [
                      Explore(),
                      FavoriteScreen(),
                      NotificationScreen(),
                      ProfileScreen(),
                      // Center(
                      //   child: Text('Page 1'),
                      // ),
                      // Center(
                      //   child: Text('Page 2'),
                      // ),
                      // Center(
                      //   child: Text('Page 3'),
                      // ),

                      // Center(
                      //   child: Text('Page 4'),
                      // ),
                  ],
                )
          )
        ),
      );
    });
  }
}

class SideMenuItemWidget extends StatelessWidget {
  const SideMenuItemWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          // color: tAccentColor.withOpacity(0.1),
        ),
        child: Icon(
          icon,
          color: tSecondaryColor,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(color: textColor, fontSize: 12),
      ),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                // color: Colors.grey.withOpacity(0.1)
              ),
              child: const Icon(
                Icons.chevron_right,
                size: 20.0,
              ),
            )
          : null,
    );
  }
}

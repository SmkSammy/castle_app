
import 'package:castle_app/features/core/screens/explore/widgets/bottom_nav_widget.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../../constant/colors.dart';
import '../../../controllers/main_controller.dart';

class BottomNavBar extends GetView<MainController> {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MainController mainController = Get.put(MainController());

    // return  Obx(() =>BottomNavyBar(
    //   backgroundColor: tWhiteColor,
    //   iconSize:20,
    //   curve: Curves.decelerate,
    //   showElevation: false,
    //   items: <BottomNavyBarItem>[
    //     BottomNavyBarItem(
    //         title: const Text('Explore'), 
    //         icon: const Icon(Ionicons.search_outline),
    //         activeColor: tPrimaryColor,
    //         inactiveColor:const Color(0xFF999999)
            
    //         ),
    //     BottomNavyBarItem(
    //         title: const Text('Favorite'), 
    //         icon: const Icon(Ionicons.search_outline),
    //         activeColor: tPrimaryColor,
    //         inactiveColor:const Color(0xFF999999)
    //         ),
    //     BottomNavyBarItem(
    //         title: const Text('Notification'),
    //         icon: const Icon(Ionicons.notifications_sharp),
    //         activeColor: tPrimaryColor,
    //         inactiveColor:const Color(0xFF999999)
    //         ),
    //     BottomNavyBarItem(
    //         title: const Text('Profile'), 
    //         icon: const Icon(Ionicons.person_circle_sharp),
    //         activeColor: tPrimaryColor,
    //         inactiveColor:const Color(0xFF999999)
    //         ),
    //   ],
    //   selectedIndex: mainController.pageIndex.value ,
    //   onItemSelected:mainController.changePageIndex
    //   ,
    // ));

    return  Obx(() =>GNav(
      backgroundColor: tWhiteColor,
      iconSize:25,
      haptic: true,
      gap: 2,
      textStyle: GoogleFonts.poppins(fontSize: 13, color: tPrimaryColor),
      activeColor:  tPrimaryColor,
      curve: Curves.easeInCirc,
      color: Color.fromRGBO(153, 153, 153, .4),
      
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 35),
      // showElevation: false,
      tabs: const [
        GButton(
            text:  'Explore', 
            icon:  Ionicons.search_outline,
            
            ),
        GButton(
            text: 'Favorite', 
            icon: Ionicons.heart_sharp
            ),
        GButton(
            text: 'Notification',
            icon: Ionicons.notifications
            ),
        GButton(
            text: 'Profile', 
            icon: Ionicons.person_circle_sharp,
            ),
      ],
      selectedIndex: mainController.pageIndex.value ,
      onTabChange:mainController.changePageIndex
      
    ));

    
  }
}

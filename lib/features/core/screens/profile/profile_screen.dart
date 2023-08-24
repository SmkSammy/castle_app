import 'package:castle_app/features/core/screens/profile/updateProfile.dart';
import 'package:castle_app/features/core/screens/profile/widgets/profile_menuitems.dart';
import 'package:castle_app/features/core/screens/wallet/wallet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant/colors.dart';
import '../../../../constant/image_strings.dart';
import '../../../../constant/sizes.dart';
import '../../controllers/profile_controller.dart';
import '../../controllers/sidebar_controller.dart';
import 'widgets/header_section.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/payment_card/payment_card.dart';
class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
 final SidebarController drawerController = Get.put(SidebarController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          // padding: const EdgeInsets.all(tDefaultSize),
          alignment: Alignment.center,
          child: Column(
            children: [
              //  const ProfileHeaderBG(),
              const ProfileHeaderWidget(),
              const SizedBox(
                height: 25,
              ),
              ProfileMenuWidget(
                title: 'Settings',
                onPress: () => {},
              ),
              const SizedBox(
                height: 5,
              ),
              ProfileMenuWidget(
                title: 'Wallet',
                onPress: () => {
                  Get.to(const WalletScreen())
                },
              ),
              const SizedBox(
                height: 5,
              ),
              ProfileMenuWidget(
                title: 'Privacy policy',
                onPress: () => {},
              ),
              const SizedBox(
                height: 5,
              ),
              ProfileMenuWidget(
                title: 'FAQs',
                onPress: () => {},
              ),
              const SizedBox(
                height: 5,
              ),
              ProfileMenuWidget(
                title: 'Contact Support',
                onPress: () => {},
              ),
              const SizedBox(
                height: 5,
              ),
              ProfileMenuWidget(
                title: 'Share App',
                onPress: () => {

                },
              ),
              const SizedBox(
                height: 5,
              ),
              ProfileMenuWidget(
                title: 'Logout',
                onPress: () => {

                },
              ),

              const SizedBox(
                height: 40,
              ),
              Text('Payment Methods',style: GoogleFonts.mavenPro(color: tDarkColor,fontSize: 13,fontWeight: FontWeight.w500),),
              const SizedBox(
                height: 20,
              ),

             const PaymentCard()
            ],
          ),
        ),
      ),
    );
  }
}


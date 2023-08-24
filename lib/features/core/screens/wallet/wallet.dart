import 'package:castle_app/common/section_headers/section_header.dart';
import 'package:castle_app/common/section_headers/section_sub_header.dart';
import 'package:castle_app/constant/text_strings.dart';
import 'package:castle_app/features/core/controllers/wallet_controller.dart';
import 'package:castle_app/features/core/screens/addfund/add_fund.dart';
import 'package:castle_app/features/core/screens/profile/widgets/profile_menuitems.dart';
import 'package:castle_app/features/core/screens/wallet/widgets/card_widget.dart';
import 'package:castle_app/features/core/screens/wallet/widgets/header_section.dart';
import 'package:castle_app/common/transaction_list/transaction_history.dart';
import 'package:castle_app/features/core/screens/withdraw/withdraw.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../constant/colors.dart';
import '../../../../constant/image_strings.dart';
import '../../../../constant/sizes.dart';
import '../../controllers/profile_controller.dart';
import '../../controllers/sidebar_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/payment_card/payment_card.dart';
import '../explore/widgets/bottom_nav_bar.dart';

class WalletScreen extends GetView<WalletController> {
  const WalletScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final SidebarController drawerController = Get.put(SidebarController());
    return Scaffold(
      // bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
          alignment: Alignment.center,
          child: Column(
            children: [
              const WalletHeaderSection(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const WalletCardWidget(
                        iconImageString: tWalletImage1,
                        subTitle: 'Balance withdrawable',
                        subTitleFontSize: 8,
                        subTitleFontWeight: FontWeight.w400,
                        title: 'Balance',
                        amount: '2,000',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      WalletCardWidget(
                        iconImageString: tWalletCardImage1,
                        subTitle:
                            'Add funds to your wallet from a saved card or through a bank deposit.',
                        subTitleFontSize: 7,
                        title: 'Add Money',
                        titleFontWeight: FontWeight.w500,
                        titleFontSize: 10,
                        onPress: () {
                          Get.to(const AddFundScreen());
                        },
                      ),
                    ],
                  ),
                   Column(
                    children: [
                      const WalletCardWidget(
                          iconImageString: tWalletImage2,
                          subTitle: 'Castle interest Withdrawable annually',
                          subTitleFontSize: 7,
                          subTitleFontWeight: FontWeight.w400,
                          title: 'Caution Deposit',
                          amount: '25,000.00',
                          icon: Ionicons.arrow_up,
                          iconSize: 15,
                          percentageInterest: '+2.5%'),
                      const SizedBox(
                        height: 10,
                      ),
                      WalletCardWidget(
                        iconImageString: tWalletCardImage2,
                        subTitle:
                            'Withdraw from your wallet. Kindly note that withdrawal are only processed into linked card and account.',
                        subTitleFontSize: 7,
                        title: 'Withdraw to bank',
                        titleFontWeight: FontWeight.w500,
                        titleFontSize: 10,
                        onPress: () {
                          Get.to(const WithdrawScreen());
                        },
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                  color: tWhiteColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  margin: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 5),
                  child: const SectionSubHeaderWidget(
                    title: 'Transaction History',
                    titleFontSize: 13,
                    fontWeight: FontWeight.w500,
                  )),
              const SizedBox(
                  height: 180, child: TransactionHistoryListWidget()),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Payment Methods',
                style: GoogleFonts.mavenPro(
                    color: tDarkColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
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

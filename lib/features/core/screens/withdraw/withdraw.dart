import 'package:castle_app/common/text_form_field/text_form_field_borderless_widget.dart';
import 'package:castle_app/common/text_form_field/text_form_field_borderless_widget_icon.dart';
import 'package:castle_app/common/text_form_field/text_form_field_widget_icon.dart';
import 'package:castle_app/common/transaction_list/transaction_history.dart';
import 'package:castle_app/constant/colors.dart';
import 'package:castle_app/constant/image_strings.dart';
import 'package:castle_app/constant/text_strings.dart';
import 'package:castle_app/features/core/controllers/add_fund_controller.dart';
import 'package:castle_app/features/core/screens/payment/widgets/card_atm.dart';
import 'package:castle_app/features/core/screens/withdraw/withdraw_second.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_icons/line_icons.dart';

import '../../../../common/section_headers/section_sub_header.dart';
import '../explore/widgets/bottom_nav_bar.dart';

class WithdrawScreen extends GetView<AddFundController> {
  const WithdrawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    bool status1 = false;
    final AddFundController controller = Get.put(AddFundController());
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: tDarkColor,
            size: 20,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        // shadowColor: tWhiteColor,
        title: Text(
          'Withdraw',
          style: GoogleFonts.mavenPro(
              fontSize: 17, fontWeight: FontWeight.w500, color: tDarkColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          alignment: Alignment.center,
          child: Column(
            children: [

              

           
              
              

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Form(
                  child:ListView(
                  shrinkWrap: true,
                    children: [

                      
                      Text(
                        'ENTER AMOUNT',
                        style: GoogleFonts.poppins(
                            fontSize: 10, fontWeight: FontWeight.w600, color: tTextColor),
                      ),
                  
                      const SizedBox(
                        height: 10,
                      ),
                      
                      TextFormFieldBorderlessWidget(
                        hintText: '$myCurrencySymbol 30,000.00', 
                        textEditingController: controller.amountController,
                        keyboardType: TextInputType.text,
                      ),
                    
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'WITHDRAWAL INFORMATION',
                        style: GoogleFonts.poppins(
                            fontSize: 10, fontWeight: FontWeight.w600, color: tTextColor),
                      ),
                       const SizedBox(
                        height: 5,
                      ),

                      Container(
                        height: 75.61 ,
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        decoration: BoxDecoration(
                            color: tWhiteColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 237, 237, 237).withOpacity(0.4),
                                  offset: const Offset(-10.0, 10.0),
                                  blurRadius: 15.0,
                                  spreadRadius: 5.0)
                            ],
                          ),

                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                         Text(
                                            'BANK NAME:',
                                            style: GoogleFonts.spaceGrotesk(
                                                fontSize: 12, fontWeight: FontWeight.w300, color: tTextColor),
                                          ),

                                           Text(
                                            'FIRSTBANK',
                                            style: GoogleFonts.poppins(
                                                fontSize: 12, fontWeight: FontWeight.w300, color: tTextColor),
                                          ),
                                      ],
                                    ),

                                    SizedBox(
                                      height: 8,
                                    ),

                                    Row(
                                      children: [
                                         Text(
                                            'ACCOUNT NUMBER:',
                                            style: GoogleFonts.spaceGrotesk(
                                                fontSize: 12, fontWeight: FontWeight.w300, color: tTextColor),
                                          ),

                                           Text(
                                            '3093765432',
                                            style: GoogleFonts.poppins(
                                                fontSize: 12, fontWeight: FontWeight.w300, color: tTextColor),
                                          ),
                                      ],
                                    )
                                  ],
                                ),

                                Image.asset(tProfileFBankImage,width: 29.71,height: 19.95,)
                            ],
                          ),
                      ),

                      Container(
                          color: tWhiteColor,
                          padding:
                              const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                                margin: const EdgeInsets.only(
                                    left: 10, right: 10, top: 20, bottom: 5),
                                child: const SectionSubHeaderWidget(
                                  title: 'Transaction History',
                                  titleFontSize: 13,
                                  fontWeight: FontWeight.w500,
                        )
                      ),

                      const SizedBox(
                        height: 320 ,
                        child: TransactionHistoryListWidget()
                      ),

                       const SizedBox(
                        height: 50 ,
                      ),

                      Container(
                          height: 48,
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: ElevatedButton(
                              onPressed:
                                  // controller.submitForm
                                  () {
                                Get.off(const WithdrawSecondScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: tPrimaryColor,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                ),
                              ),
                              child: Text(tContinue,
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  )
                                )
                              )
                            )
                          ),

                      

                    ],
                  ) ,
                ),
              ),
             
             
              

             
            ],
          ),
        ),
      ),
    );
  }
}

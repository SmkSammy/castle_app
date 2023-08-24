import 'package:castle_app/common/text_form_field/text_form_field_borderless_widget.dart';
import 'package:castle_app/common/text_form_field/text_form_field_borderless_widget_icon.dart';
import 'package:castle_app/common/text_form_field/text_form_field_widget_icon.dart';
import 'package:castle_app/common/transaction_list/transaction_history.dart';
import 'package:castle_app/constant/colors.dart';
import 'package:castle_app/constant/image_strings.dart';
import 'package:castle_app/constant/text_strings.dart';
import 'package:castle_app/features/core/controllers/add_fund_controller.dart';
import 'package:castle_app/features/core/screens/payment/widgets/card_atm.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_icons/line_icons.dart';

import '../../../../common/section_headers/section_sub_header.dart';
import '../explore/widgets/bottom_nav_bar.dart';

class WithdrawSecondScreen extends GetView<AddFundController> {
  const WithdrawSecondScreen({super.key});

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
                padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                          '30,000.00 will be withdrawn from your CASTLE wallet to your bank. Be sure your account information is correct to avoid failed transaction.',
                          style: GoogleFonts.poppins(
                              fontSize: 10, fontWeight: FontWeight.w300, color: Colors.grey[600]),
                    ),
              ),

              Container(
                        height: 100,
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        margin: const EdgeInsets.symmetric(vertical: 15),
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
                                            'AMOUNT:',
                                            style: GoogleFonts.spaceGrotesk(
                                                fontSize: 12, fontWeight: FontWeight.w300, color: tTextColor),
                                          ),

                                           Text(
                                            '30,000.00',
                                            style: GoogleFonts.poppins(
                                                fontSize: 12, fontWeight: FontWeight.w300, color: tTextColor),
                                          ),
                                      ],
                                    ),

                                    const SizedBox(
                                      height: 8,
                                    ),
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

                                    const SizedBox(
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

                                TextButton(onPressed: null, child: Text('One click withdraw>>',style: GoogleFonts.spaceGrotesk(fontSize: 12,fontWeight: FontWeight.w300,color: Colors.black45),))
                            ],
                          ),
                      ),

                        Container(
                                margin: const EdgeInsets.only(
                                    left: 10, right: 10, top: 5, bottom: 5),
                                child: const SectionSubHeaderWidget(
                                  title: 'ADD A NEW BANK?',
                                  titleFontSize: 13,
                                  fontWeight: FontWeight.w600,
                        )
                      ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Form(
                  child:ListView(
                  shrinkWrap: true,
                    children: [
                      Text(
                        'AMOUNT',
                        style: GoogleFonts.poppins(
                            fontSize: 10, fontWeight: FontWeight.w600, color: tTextColor),
                      ),
                  
                      const SizedBox(
                        height: 10,
                      ),
                      
                      TextFormFieldBorderlessWidget(
                        hintText: '30,000.00', 
                        textEditingController: controller.amountController,
                        keyboardType: TextInputType.text,
                      ),
                    
                      const SizedBox(
                        height: 10,
                      ),

                      Text(
                        'BANK NAME',
                        style: GoogleFonts.poppins(
                            fontSize: 10, fontWeight: FontWeight.w600, color: tTextColor),
                      ),
                  
                      const SizedBox(
                        height: 10,
                      ),
                      
                      TextFormFieldIconBorderlessWidget(
                        hintText: 'Firstbank plc', 
                        textEditingController: controller.amountController,
                        suffixIconImage: tProfileFBankImage,
                      ),
                    
                      const SizedBox(
                        height: 10,
                      ),

                      Text(
                        'ACCOUNT NUMBER',
                        style: GoogleFonts.poppins(
                            fontSize: 10, fontWeight: FontWeight.w600, color: tTextColor),
                      ),
                  
                      const SizedBox(
                        height: 10,
                      ),
                      
                      TextFormFieldBorderlessWidget(
                        hintText: '3091679876', 
                        textEditingController: controller.amountController,
                        keyboardType: TextInputType.text,
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Text(
                        'ACCOUNT NAME',
                        style: GoogleFonts.poppins(
                            fontSize: 10, fontWeight: FontWeight.w600, color: tTextColor),
                      ),
                  
                      const SizedBox(
                        height: 10,
                      ),
                      
                      TextFormFieldBorderlessWidget(
                        hintText: 'Wale.fig', 
                        textEditingController: controller.amountController,
                        keyboardType: TextInputType.text,
                      ),

                      const SizedBox(
                        height: 10,
                      ),


                       Container(
                            padding:
                                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                      'Save as default bank?',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12, fontWeight: FontWeight.w300, color: Colors.black38),
                                ),
                          
                                FlutterSwitch(
                                    width: 30.0,
                                    height: 15.0,
                                    toggleSize: 10.0,
                                    value: status1,
                                    // borderRadius: 30.0,
                                    padding: 2.0,
                                    toggleColor: const Color.fromRGBO(115, 115, 115, 1),
                                    inactiveColor: Colors.black12,
                                    onToggle: (val) {
                                      // setState(() {
                                      //   status2 = val;
                                      // });
                                    },
                                  ),
                              ],
                            ),
                          ),

                       const SizedBox(
                        height: 20,
                      ),

                      Container(
                          height: 48,
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: ElevatedButton(
                              onPressed:
                                  // controller.submitForm
                                  () {
                                // Get.off(const WalletScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: tPrimaryColor,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                ),
                              ),
                              child: Text('Withdraw To Bank',
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

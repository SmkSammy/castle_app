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

class PaymentScreen extends GetView<AddFundController> {
  const PaymentScreen({super.key});

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
          'Payment',
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
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                          'PAY WITH CARD',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w600, color: tTextColor),
                    ),
              
                    FlutterSwitch(
                        width: 30.0,
                        height: 15.0,
                        toggleSize: 10.0,
                        value: status1,
                        // borderRadius: 30.0,
                        padding: 2.0,
                        toggleColor: const Color.fromRGBO(115, 115, 115, 1),
                        // switchBorder: Border.all(
                        //   color: Color.fromRGBO(2, 107, 206, 1),
                        //   width: 6.0,
                        // ),
                        // toggleBorder: Border.all(
                        //   color: Color.fromRGBO(2, 107, 206, 1),
                        //   width: 5.0,
                        // ),
                        // activeColor: Color.fromRGBO(51, 226, 255, 1),
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

              Container(
                padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Text(
                          '30,000.00 will be charged from your account and credited to your CASTLE wallet. Please note: Deposit are free, Castle do not add extra charges from your deposit',
                          style: GoogleFonts.poppins(
                              fontSize: 10, fontWeight: FontWeight.w300, color: Colors.grey[600]),
                    ),
              ),


              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const CardATMWidget(),
                ),
              
              

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Form(
                  child:ListView(
                  shrinkWrap: true,
                    children: [

                      Container(
                        // height: 20,
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                        child: const SectionSubHeaderWidget(title:'PAY WITH A NEW CARD' , titleFontSize: 13, fontWeight: FontWeight.w600,)
                      ),
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
                        height: 20,
                      ),

                      Text(
                        'CARD NUMBER',
                        style: GoogleFonts.poppins(
                            fontSize: 10, fontWeight: FontWeight.w600, color: tTextColor),
                      ),
                  
                      const SizedBox(
                        height: 10,
                      ),
                      
                     
                       TextFormFieldIconBorderlessWidget(
                        hintText: '2676543298123', 
                        textEditingController: controller.amountController,
                        suffixIconImage: tVisaDark,
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      Text(
                        'EXPIRY',
                        style: GoogleFonts.poppins(
                            fontSize: 10, fontWeight: FontWeight.w600, color: tTextColor),
                      ),
                  
                      const SizedBox(
                        height: 10,
                      ),
                      
                      TextFormFieldBorderlessWidget(
                        hintText: '09/2025', 
                        textEditingController: controller.amountController,
                        keyboardType: TextInputType.text,
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      Text(
                        'CVV',
                        style: GoogleFonts.poppins(
                            fontSize: 10, fontWeight: FontWeight.w600, color: tTextColor),
                      ),
                  
                      const SizedBox(
                        height: 10,
                      ),
                      
                      TextFormFieldIconBorderlessWidget(
                        hintText: '***', 
                        textEditingController: controller.amountController,
                        suffixIcon: LineIcons.questionCircle,
                        suffixIconColor:Color(0xFF222222)
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

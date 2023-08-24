import 'package:castle_app/common/text_form_field/text_form_field_borderless_widget.dart';
import 'package:castle_app/common/text_form_field/text_form_field_widget.dart';
import 'package:castle_app/common/transaction_list/transaction_history.dart';
import 'package:castle_app/constant/colors.dart';
import 'package:castle_app/constant/sizes.dart';
import 'package:castle_app/constant/text_strings.dart';
import 'package:castle_app/features/core/controllers/add_fund_controller.dart';
import 'package:castle_app/features/core/screens/payment/payment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../common/section_headers/section_sub_header.dart';
import '../explore/widgets/bottom_nav_bar.dart';

class AddFundScreen extends GetView<AddFundController> {
  const AddFundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
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
          'Add Money',
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
                        'WALLET DETAILS',
                        style: GoogleFonts.poppins(
                            fontSize: 10, fontWeight: FontWeight.w600, color: tTextColor),
                      ),
                  
                      const SizedBox(
                        height: 10,
                      ),
                      
                      TextFormFieldBorderlessWidget(
                        hintText: 'Castle Wallet ID 7865790', 
                        textEditingController: controller.amountController,
                        keyboardType: TextInputType.text,
                      ),
                    ],
                  ) ,
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
                  )),
              const SizedBox(
                height: 320 ,
                child: TransactionHistoryListWidget()
              ),
              const SizedBox(
                height: 40,
              ),

              Container(
                height: 48,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                    onPressed:
                        // controller.submitForm
                        () {
                      Get.off(const PaymentScreen());
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
                )
            ],
          ),
        ),
      ),
    );
  }
}

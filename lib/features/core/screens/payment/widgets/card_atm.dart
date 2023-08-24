import 'package:castle_app/constant/colors.dart';
import 'package:castle_app/constant/image_strings.dart';
import 'package:castle_app/constant/text_strings.dart';
import 'package:castle_app/features/core/screens/wallet/wallet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CardATMWidget extends StatelessWidget {
  const CardATMWidget({super.key, this.onClickToGetPaid});
  final Future Function()? onClickToGetPaid;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),

      height: 215,
      // width: 381,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF222222),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                tChipperLogo,
                width: 100,
              ),
              Image.asset(
                tVisaWhite,
                width: 50,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '-$myCurrencySymbol 30,000.00',
                style: GoogleFonts.spaceGrotesk(
                    fontSize: 23.3,
                    fontWeight: FontWeight.w500,
                    color: tWhiteColor),
              ),
              TextButton(
                onPressed: () {
                  displayBottomSheet(context);
                },
                child: Text(
                  'Click to pay >>>',
                  style: GoogleFonts.spaceGrotesk(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.white70),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Wale.Fig ',
                    style: GoogleFonts.spaceGrotesk(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    '.....2486',
                    style: GoogleFonts.spaceGrotesk(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                    child: Text(
                      'VALID THRU',
                      style: GoogleFonts.spaceGrotesk(
                          fontSize: 6,
                          fontWeight: FontWeight.w300,
                          color: Colors.white70),
                    ),
                  ),
                  Text(
                    '09/23',
                    style: GoogleFonts.spaceGrotesk(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Future displayBottomSheet(BuildContext context) {
    return showModalBottomSheet<void>(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(50))
        ),
        builder: (context) => Container(
              height: 524.43,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(tSuccessFlower,width: 310,height: 220, ),
                  const SizedBox(
                    height: 10,
                  ),

                  Text(
                    'PAYMENT SUCCESSFUL!',
                    style: GoogleFonts.mavenPro(fontSize: 20,fontWeight: FontWeight.w600),
                  ),

                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 310,
                    child: Text(
                      'Your deposit of 30,000.00 is successful. Your wallet has been credited.',
                      style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w300),
                      textAlign: TextAlign.center,
                    ),
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
                      Get.off(const WalletScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: tPrimaryColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                    child: Text('Go to Wallet',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )
                      )
                    )
                  )
                ),

                   const SizedBox(
                    height: 30,
                  ),
                ],
              ),
        )
      );
  }
}

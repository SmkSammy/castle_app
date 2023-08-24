import 'package:castle_app/common/text_form_field/text_form_field_widget.dart';
import 'package:castle_app/constant/image_strings.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import '../../../../constant/colors.dart';
import '../../../../constant/sizes.dart';
import '../../../../constant/text_strings.dart';

class VerificationCodeForm extends StatelessWidget {
  const VerificationCodeForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     final _otpPinFieldController = GlobalKey<OtpPinFieldState>();
    final formkey = GlobalKey<FormState>();
    return Form(
      key: formkey,
      child: Container(
        // padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          OtpPinField(
            key: _otpPinFieldController,
            autoFillEnable: false,

              ///for Ios it is not needed as the SMS autofill is provided by default, but not for Android, that's where this key is useful.
              textInputAction: TextInputAction.done,

              ///in case you want to change the action of keyboard
              /// to clear the Otp pin Controller
              onSubmit: (text) {
                print('Entered pin is $text');

                /// return the entered pin
              },
              onChange: (text) {
                print('Enter on change pin is $text');

                /// return the entered pin
              },
              onCodeChanged: (code) {
                print('onCodeChanged  is $code');
              },
              
              otpPinFieldDecoration:OtpPinFieldDecoration.custom,
              otpPinFieldStyle:const OtpPinFieldStyle(
                defaultFieldBorderColor: Colors.transparent,
                activeFieldBorderColor: Colors.transparent,
                
                activeFieldBackgroundColor: Color.fromARGB(255, 205, 205, 205),
                defaultFieldBackgroundColor: Color.fromARGB(255, 205, 205, 205),
                ),
              maxLength: 4,
              fieldWidth: 68,
              fieldHeight: 60,
            ),
            
          
            const SizedBox(
              height: 80,
            ),
            
            SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  
                    onPressed: () {
                      // AuthenticationRepository.instance.loginWithEmailAndPassword(email, password)
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: tPrimaryColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        
                      ),
                  ), 
                    child: Text(tContinue,style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400,))))
              ),

            const SizedBox(
              height: 80,
            ),

            Text('Didn’t receive the code?', style: GoogleFonts.poppins(fontSize: 12),),

            
            TextButton(
              onPressed: (){

              }, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Icon(CommunityMaterialIcons.refresh),
                  Text('Resend code', style: GoogleFonts.poppins(fontSize: 12),),
                ],
              )
              )
          ],
        ),
      ),
    );
  }
}

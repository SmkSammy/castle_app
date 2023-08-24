import 'package:castle_app/common/text_form_field/text_form_field_widget.dart';
import 'package:castle_app/constant/image_strings.dart';
import 'package:castle_app/features/authentication/controllers/forgot_password_controller.dart';
import 'package:castle_app/features/authentication/screens/verfication_code/verfication_code_screen.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../constant/colors.dart';
import '../../../../constant/sizes.dart';
import '../../../../constant/text_strings.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    final ForgotPasswordController controller = Get.put(ForgotPasswordController());
    return Form(
      key: formkey,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormFieldWidget(
              hintText: tForgotPasswordEmailPhone,
              textEditingController: controller.passwordController,
              ),
          
            
          
            const SizedBox(
              height: 60,
            ),
            
            SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  
                    onPressed: () {
                      Get.off(const VerificationCodeScreen());
                      // AuthenticationRepository.instance.loginWithEmailAndPassword(email, password)
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: tPrimaryColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        
                      ),
                  ), 
                    child: Text(tContinue,style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400,))))),
          ],
        ),
      ),
    );
  }
}

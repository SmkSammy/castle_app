import 'package:castle_app/common/text_form_field/text_form_field_widget.dart';
import 'package:castle_app/features/authentication/controllers/login_controller.dart';
import 'package:castle_app/features/core/screens/main_screen.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../common/text_form_field/text_form_field_widget_icon.dart';
import '../../../../constant/colors.dart';
import '../../../../constant/sizes.dart';
import '../../../../constant/text_strings.dart';
import '../forgot_password/forgot_password_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    final LoginController controller = Get.put(LoginController());
    return Form(
      key: formkey,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: GoogleFonts.mavenPro(
                  fontSize: 13, fontWeight: FontWeight.w400, color: tTextColor),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormFieldWidget(
              hintText: tEmail,
              textInputType: TextInputType.emailAddress,
              textEditingController: controller.emailController,
            ),
            const SizedBox(
              height: tFormHeight - 10,
            ),
            Text(
              'Password',
              style: GoogleFonts.mavenPro(
                  fontSize: 13, fontWeight: FontWeight.w400, color: tTextColor),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormFieldIconWidget(
              hintText: tPassword,
              prefixIcon: CommunityMaterialIcons.lock_off_outline,
              suffixIcon: CommunityMaterialIcons.eye_off_outline,
              textEditingController: controller.passwordController,
              onPressedSuffixIcon: () {},
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                  onPressed: () {
                    Get.to(() => const ForgotPasswordScreen());
                  },
                  child: Text.rich(TextSpan(
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: tPrimaryColor)),
                    text: tForgetPassword,
                  ))),
            ),
            const SizedBox(
              height: 80,
            ),
            SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.off(MainScreen());
                      // AuthenticationRepository.instance.loginWithEmailAndPassword(email, password)
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: tPrimaryColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                    child: Text(tLogin,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ))))),
          ],
        ),
      ),
    );
  }
}

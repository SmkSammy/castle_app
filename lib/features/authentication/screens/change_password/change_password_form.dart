import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constant/colors.dart';
import '../../../../constant/sizes.dart';
import '../../../../constant/text_strings.dart';
import '../../../core/screens/main_screen.dart';

class ChangePasswordForm extends StatelessWidget {
  const ChangePasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    return Form(
      key: formkey,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: tPrimaryColor,
                  ),
                  labelText: tPassword,
                  hintText: tPassword,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: tPrimaryColor))),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.fingerprint,
                    color: tPrimaryColor,
                  ),
                  labelText: tConfirmPassword,
                  hintText: tConfirmPassword,
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.remove_red_eye_sharp,
                      ))),
            ),
            const SizedBox(
              height: tFormHeight + 40,
            ),
            SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const MainScreen());
                      // AuthenticationRepository.instance.loginWithEmailAndPassword(email, password)
                    },
                    child: Text('Change Password',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ))))),
          ],
        ),
      ),
    );
  }
}

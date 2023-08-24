import 'package:castle_app/constant/image_strings.dart';
import 'package:castle_app/features/authentication/screens/signup/signup_form.dart';
import 'package:castle_app/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_divider/text_divider.dart';

import '../../../../constant/colors.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Column(
        children: [
          TextDivider.horizontal(
            text: Text('Or Sign in with',
                style: GoogleFonts.poppins(fontSize: 12)),
            thickness: 1,
            color: const Color(0xFFA5B4A5),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 59.17,
                  height: 46.67,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.transparent),
                        elevation: 10,
                        shadowColor: Colors.black26,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Image(
                        image: AssetImage(tGoogleAuthImage),
                        height: 50,
                      )),
                ),
                SizedBox(
                  width: 59.17,
                  height: 46.67,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.transparent),
                        elevation: 10,
                        shadowColor: Colors.black26,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Image(
                        image: AssetImage(tFacebookAuthImage),
                        height: 50,
                      )),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Don't have an account? ",
                style: GoogleFonts.poppins(fontSize: 13),
              ),
              TextButton(
                  onPressed: () {
                    Get.off(SignUpForm());
                  },
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.poppins(fontSize: 13),
                  ))
            ]),
          )
        ],
      ),
    );
  }
}

import 'dart:io';

import 'package:castle_app/common/form/form_header_widget_NoImage.dart';
import 'package:castle_app/constant/colors.dart';
import 'package:castle_app/constant/text_strings.dart';
import 'package:castle_app/features/authentication/screens/forgot_password/forgot_password_form.dart';
import 'package:castle_app/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/form/form_header_widget.dart';
import '../../../../constant/image_strings.dart';
import '../../../../constant/sizes.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  final size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar:  PreferredSize(
      //             preferredSize: Platform.isIOS ? const Size.fromHeight(20): const Size.fromHeight(0),
      //             child: AppBar(
      //                 // ...
      //               )
      //           ),

      body: SingleChildScrollView(
        child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  width: 45,
                  height: 45,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.off(const LoginScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.transparent),
                        elevation: 10,
                        shadowColor: Colors.black26,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          // side: const BorderSide(width: 5, color: Colors.white)
                          //border radius equal to or more than 50% of width
                        ),
                        // alignment: Alignment.center
                      ),
                      child: const Icon(
                        Icons.arrow_back_outlined,
                        size: 20.0,
                        color: tPrimaryColor,
                      )),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Image(
                image: AssetImage(tForgotPasswordImage),
              ),
              const FormHeaderNoImageWidget(
                title: tForgotPasswordTitle,
                subTitle: tForgotPasswordSubTitle,
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(tDefaultSize),
                child: ForgotPasswordForm(),
              ),
            ]),
      ),
    );
  }
}

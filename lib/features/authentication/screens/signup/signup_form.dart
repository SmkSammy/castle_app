import 'package:castle_app/common/form/form_header_widget.dart';
import 'package:castle_app/common/form/form_header_widget_NoImage.dart';
import 'package:castle_app/common/text_form_field/text_form_field_widget.dart';
import 'package:castle_app/constant/image_strings.dart';
import 'package:castle_app/features/authentication/controllers/signup_controller.dart';
import 'package:castle_app/features/authentication/screens/login/login_screen.dart';
import 'package:castle_app/features/core/screens/explore/explore.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../../common/text_form_field/text_form_field_widget_icon.dart';
import '../../../../constant/colors.dart';
import '../../../../constant/sizes.dart';
import '../../../../constant/text_strings.dart';
import '../forgot_password/forgot_password_screen.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final SignUpController controller = Get.put(SignUpController());
    // final formkey = GlobalKey<FormState>();
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: PageView(
              controller: controller.pageController,
              // physics: NeverScrollableScrollPhysics(),
              children: [
                _buildPage1(controller, context),
                _buildPage2(controller, context),
              ],
            ),
          ),
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: controller.goToNextPage,
      //   child: Icon(controller.currentPage.value == 0 ? Icons.arrow_forward : Icons.check),
      // ),
    );
  }

  Widget _buildPage1(SignUpController controller, BuildContext context) {
    return Form(
      key: controller.formKey1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const FormHeaderWidget(
              image: tEmojiNerdFaceImage,
              title: tSignUpTitle,
              subTitle: tSignUpSubTitle,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Email',
              style: GoogleFonts.mavenPro(
                  fontSize: 13, fontWeight: FontWeight.w400, color: tTextColor),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormFieldWidget(
              hintText: 'Abcdforexample@gmail.com',
              textInputType: TextInputType.emailAddress,
              textEditingController: controller.emailController,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Password',
              style: GoogleFonts.mavenPro(
                  fontSize: 13, fontWeight: FontWeight.w400, color: tTextColor),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormFieldWidget(
              hintText: 'Enter a 6 digit password',
              textInputType: TextInputType.visiblePassword,
              textEditingController: controller.passwordController,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Confirm Password',
              style: GoogleFonts.mavenPro(
                  fontSize: 13, fontWeight: FontWeight.w400, color: tTextColor),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormFieldWidget(
              hintText: 'Re-enter password',
              textInputType: TextInputType.visiblePassword,
              textEditingController: controller.passwordConfirmController,
            ),
            const SizedBox(
              height: 150,
            ),
            SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      controller.goToNextPage();
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
                        ))))),
            Container(
              padding: const EdgeInsets.only(top: 15),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Already have an account? ",
                  style: GoogleFonts.poppins(fontSize: 13),
                ),
                TextButton(
                    onPressed: () {
                      Get.off(const LoginScreen());
                    },
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.poppins(fontSize: 13),
                    ))
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPage2(SignUpController controller, BuildContext context) {
    String dropdownvalue = 'Male';

    // List of items in our dropdown menu
    var items = [
      'Male',
      'Female',
    ];
    String initialCountry = 'NG';
    PhoneNumber number = PhoneNumber(isoCode: 'NG');
    return Form(
      key: controller.formKey2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.s,
          children: [
            const SizedBox(
              height: 20,
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
                      controller.goToPreviousPage();
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
            const FormHeaderNoImageWidget(
              title: 'Additional information',
              subTitle:
                  'Let’s add additional information to enable us serve you better.',
            ),

            const SizedBox(
              height: 40,
            ),
            Text(
              'First Name',
              style: GoogleFonts.mavenPro(
                  fontSize: 13, fontWeight: FontWeight.w400, color: tTextColor),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormFieldWidget(
              hintText: 'ex: John',
              textInputType: TextInputType.visiblePassword,
              textEditingController: controller.passwordConfirmController,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Last Name',
              style: GoogleFonts.mavenPro(
                  fontSize: 13, fontWeight: FontWeight.w400, color: tTextColor),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormFieldWidget(
              hintText: 'ex: Doe',
              textInputType: TextInputType.visiblePassword,
              textEditingController: controller.passwordConfirmController,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Phone',
              style: GoogleFonts.mavenPro(
                  fontSize: 13, fontWeight: FontWeight.w400, color: tTextColor),
            ),
            const SizedBox(
              height: 10,
            ),

            InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                print(number.phoneNumber);
              },
              onInputValidated: (bool value) {
                print(value);
              },
              selectorConfig: const SelectorConfig(
                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              ),
              ignoreBlank: false,

              autoValidateMode: AutovalidateMode.disabled,
              // selectorTextStyle: TextStyle(color: Colors.black),
              initialValue: number,

              textFieldController: controller.phoneController,
              formatInput: true,
              inputDecoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 2.0, horizontal: 15.0),
                // hintText: hintText,

                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: tPrimaryColor,
                )),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: tPrimaryColor)),
              ),
              hintText: 'Phone Number',
              spaceBetweenSelectorAndTextField: 0,

              keyboardType: const TextInputType.numberWithOptions(
                  signed: true, decimal: true),
              inputBorder: const OutlineInputBorder(),
              onSaved: (PhoneNumber number) {
                print('On Saved: $number');
              },
            ),
            // TextFormFieldWidget(
            //   hintText: 'ex: Doe',
            //   textInputType: TextInputType.visiblePassword,
            //   textEditingController: controller.passwordConfirmController,
            // ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Gender',
              style: GoogleFonts.mavenPro(
                  fontSize: 13, fontWeight: FontWeight.w400, color: tTextColor),
            ),
            const SizedBox(
              height: 10,
            ),

            DropdownButtonFormField(
              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 2.0, horizontal: 15.0),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: tPrimaryColor,
                )),
              ),
              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                // setState(() {
                //   dropdownvalue = newValue!;
                // });
              },
            ),
            // TextFormFieldWidget(
            //   hintText: 'ex: Doe',
            //   textInputType: TextInputType.visiblePassword,
            //   textEditingController: controller.passwordConfirmController,
            // ),
            const SizedBox(height: 10),

            Obx(() => CheckboxListTile(
                  activeColor: Color(0xFF4DB749),
                  title: Text(
                    'By signing up, you agree to our Terms and Privacy Policy.',
                    style: GoogleFonts.poppins(fontSize: 10),
                  ),
                  value: controller.isChecked.value,
                  onChanged: (bool? value) {
                    controller.toggleCheckbox(value ?? false);
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                )),
            const SizedBox(
              height: 70,
            ),
            SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed:
                        // controller.submitForm
                        () {
                      Get.off(const Explore());
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
                        ))))),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final PageController pageController = PageController(initialPage: 0);
  final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
  final GlobalKey<FormState> formKey2 = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final RxInt currentPage = 0.obs;
  RxBool isChecked = false.obs;

  void toggleCheckbox(bool value) {
    isChecked.value = value;
  }
  void goToNextPage() {
    if (pageController.page == 0) {
      pageController.animateToPage(1, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
    } else if (currentPage.value == 1) {
      submitForm();
    }
  }

  void goToPreviousPage() {
    if (pageController.page == 1) {
      pageController.animateToPage(0, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  void submitForm() {
    if (formKey1.currentState!.validate() && formKey2.currentState!.validate()) {
      // Process form data (submit, save, etc.)
      print('Form submitted successfully!');
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    passwordController.dispose();
    passwordConfirmController.dispose();
    emailController.dispose();
    super.dispose();
  }
}

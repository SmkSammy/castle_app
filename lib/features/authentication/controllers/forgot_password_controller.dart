import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
    static ForgotPasswordController get instance => Get.find();
    final TextEditingController passwordController = TextEditingController();
}

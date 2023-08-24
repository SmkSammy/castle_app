import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
    static LoginController get instance => Get.find();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
}

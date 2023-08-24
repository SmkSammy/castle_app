import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController {
     static PaymentController get instance => Get.find();
    final TextEditingController amountController = TextEditingController();
    final TextEditingController walletIDController = TextEditingController();
}
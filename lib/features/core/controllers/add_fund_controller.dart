import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddFundController extends GetxController {
     static AddFundController get instance => Get.find();
    final TextEditingController amountController = TextEditingController();
    final TextEditingController walletIDController = TextEditingController();
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/application_controller.dart';

class ApplicationScreen extends GetView<ApplicationController> {
  const ApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(child: Text('Application')),
      ),
    );
  }
}
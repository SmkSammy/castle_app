import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SidebarController extends GetxController {
  var isSidebarOpen = false.obs;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  void toggleSidebar() {
    scaffoldKey.currentState!.openDrawer();
    // isSidebarOpen.value = !isSidebarOpen.value;
  }
}

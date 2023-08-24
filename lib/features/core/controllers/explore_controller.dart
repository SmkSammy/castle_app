import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreController extends GetxController {
    static ExploreController get instance => Get.find();
    PageController pageController = PageController();
  int _pageIndex = 0;
  int get pageIndex => _pageIndex;
  set pageIndex(int newIndex) {
    _pageIndex = newIndex;
    update(); 
  }
}

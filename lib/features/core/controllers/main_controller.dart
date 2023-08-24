import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {

  // PageController pageController = PageController(); 
  final pageIndex = 0.obs;
  // int get pageIndex => _pageIndex.value;
  void changePageIndex(int newIndex) {
    pageIndex.value= newIndex;
    update(); 
  }
}

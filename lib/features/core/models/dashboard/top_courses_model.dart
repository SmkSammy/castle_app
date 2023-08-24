import 'package:flutter/material.dart';

class DashboardTopCoursesModel {
  late final String title;
  late final String heading;
  late final String subHeading;
  late final VoidCallback? onPress;

  DashboardTopCoursesModel(this.title, this.heading, this.subHeading, this.onPress);

  static List<DashboardTopCoursesModel> list = [
    DashboardTopCoursesModel("JavaScript Crash Course", "3 Sections", "Easy Learning",null),
    DashboardTopCoursesModel("Flutter Crash Course", "5 Sections", "Easy Learning",null),
    DashboardTopCoursesModel("HTML Crash Course", "2 Sections", "Easy Learning",null),
    DashboardTopCoursesModel("Kotlin Crash Course", "29 Sections", "Easy Learning",null),
    DashboardTopCoursesModel("Python Crash Course", "6 Sections", "Easy Learning",null),
  ];
}

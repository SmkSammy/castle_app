import 'package:flutter/material.dart';

class DashboardCategoriesModel {
  late final String title;
  late final String heading;
  late final String subHeading;
  late final VoidCallback? onPress;

  DashboardCategoriesModel(this.title, this.heading, this.subHeading, this.onPress);

  static List<DashboardCategoriesModel> list = [
    DashboardCategoriesModel("JS", "JavaScript", "10 lessons",null),
    DashboardCategoriesModel("F", "Flutter", "17 lessons",null),
    DashboardCategoriesModel("H", "HTML", "6 lessons",null),
    DashboardCategoriesModel("K", "Kotlin", "40 lessons",null),
    DashboardCategoriesModel("P", "Python", "15 lessons",null),
  ];
}

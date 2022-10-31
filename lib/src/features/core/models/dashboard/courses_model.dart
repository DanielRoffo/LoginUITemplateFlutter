import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';

class DashboardCoursesModel{
  final String title;
  final String heading;
  final String subHeading;
  final String image;
  final VoidCallback? onPress;

  DashboardCoursesModel(this.title, this.heading, this.subHeading, this.image, this.onPress);

  static List<DashboardCoursesModel> list = [
    DashboardCoursesModel("Flutter Crash Course", "3 Sections", "Programming Languages", tTopCouseImage1 , null),
    DashboardCoursesModel("HTML / CSS Crash Course", "2 Sections", "35 Lessons", tTopCouseImage1 ,null),
    DashboardCoursesModel("Material Desing Course", "6 Sections", "Programming & Design", tTopCouseImage1 ,null),
  ];
}
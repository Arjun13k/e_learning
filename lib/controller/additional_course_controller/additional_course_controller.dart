import 'package:e_learning/model/additional_cource_model/addittional_cource_model.dart';
import 'package:flutter/material.dart';

class AdditionalCourseController with ChangeNotifier {
  static List<AdditinalCource> courseSection = [
    AdditinalCource(
        image:
            "https://resources.reed.co.uk/courses/coursemedia/280228/ba7a86b7-8aac-4b5b-a870-c7a556d93d85_cover.webp",
        title: "Spoken English",
        youtubeId: "hs0FEzGQed0",
        subTitle: "Section 1")
  ];

  static List<AdditionalCourseList> courseList = [
    AdditionalCourseList(
        image:
            "https://resources.reed.co.uk/courses/coursemedia/280228/ba7a86b7-8aac-4b5b-a870-c7a556d93d85_cover.webp",
        title: "Spoken English")
  ];
}

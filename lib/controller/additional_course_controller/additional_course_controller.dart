import 'package:e_learning/model/additional_cource_model/addittional_cource_model.dart';
import 'package:flutter/material.dart';

class AdditionalCourseController with ChangeNotifier {
  static List<AdditinalCourceModel> spokenCourseSection = [
    AdditinalCourceModel(
      image:
          "https://resources.reed.co.uk/courses/coursemedia/280228/ba7a86b7-8aac-4b5b-a870-c7a556d93d85_cover.webp",
      title: "Spoken English",
      youtubeId: "hs0FEzGQed0",
      subTitle: "Section 1",
    ),
    AdditinalCourceModel(
        image:
            "https://resources.reed.co.uk/courses/coursemedia/280228/ba7a86b7-8aac-4b5b-a870-c7a556d93d85_cover.webp",
        title: "Spoken English",
        youtubeId: "Wyvl6piD0vY",
        subTitle: "Section 2"),
    AdditinalCourceModel(
        image:
            "https://resources.reed.co.uk/courses/coursemedia/280228/ba7a86b7-8aac-4b5b-a870-c7a556d93d85_cover.webp",
        title: "Spoken English",
        youtubeId: "mXtd_c0-19E",
        subTitle: "Section 3"),
    AdditinalCourceModel(
        image:
            "https://resources.reed.co.uk/courses/coursemedia/280228/ba7a86b7-8aac-4b5b-a870-c7a556d93d85_cover.webp",
        title: "Spoken English",
        youtubeId: "FJfvHT9AY3A",
        subTitle: "Section 4"),
    AdditinalCourceModel(
        image:
            "https://resources.reed.co.uk/courses/coursemedia/280228/ba7a86b7-8aac-4b5b-a870-c7a556d93d85_cover.webp",
        title: "Spoken English",
        youtubeId: "ylKVM9TyVcM",
        subTitle: "Section 5"),
    AdditinalCourceModel(
        image:
            "https://resources.reed.co.uk/courses/coursemedia/280228/ba7a86b7-8aac-4b5b-a870-c7a556d93d85_cover.webp",
        title: "Spoken English",
        youtubeId: "alJweErUTPo",
        subTitle: "Section 6"),
    AdditinalCourceModel(
        image:
            "https://resources.reed.co.uk/courses/coursemedia/280228/ba7a86b7-8aac-4b5b-a870-c7a556d93d85_cover.webp",
        title: "Spoken English",
        youtubeId: "EEqy_F_BYIM",
        subTitle: "Section 7"),
    AdditinalCourceModel(
        image:
            "https://resources.reed.co.uk/courses/coursemedia/280228/ba7a86b7-8aac-4b5b-a870-c7a556d93d85_cover.webp",
        title: "Spoken English",
        youtubeId: "V8jvgeFBQog",
        subTitle: "Section 8")
  ];

  static List<AdditinalCourceModel> msExcelCourseSection = [
    AdditinalCourceModel(
        image:
            "https://th.bing.com/th/id/OIP.6INpILSfB6MhnEYHlvEN4QHaG4?rs=1&pid=ImgDetMain",
        title: "ms excel",
        youtubeId: "WhPPwdyaSXk",
        subTitle: "section 1"),
    AdditinalCourceModel(
        image:
            "https://th.bing.com/th/id/OIP.6INpILSfB6MhnEYHlvEN4QHaG4?rs=1&pid=ImgDetMain",
        title: "ms excel",
        youtubeId: "mgGJYRwy3_I",
        subTitle: "section 2"),
    AdditinalCourceModel(
        image:
            "https://th.bing.com/th/id/OIP.6INpILSfB6MhnEYHlvEN4QHaG4?rs=1&pid=ImgDetMain",
        title: "ms excel",
        youtubeId: "rFJCR3YJpXk",
        subTitle: "section 3"),
    AdditinalCourceModel(
        image:
            "https://th.bing.com/th/id/OIP.6INpILSfB6MhnEYHlvEN4QHaG4?rs=1&pid=ImgDetMain",
        title: "ms excel",
        youtubeId: "ed0JiFtBHXQ",
        subTitle: "section 4"),
    AdditinalCourceModel(
        image:
            "https://th.bing.com/th/id/OIP.6INpILSfB6MhnEYHlvEN4QHaG4?rs=1&pid=ImgDetMain",
        title: "ms excel",
        youtubeId: "ND7uoT5wLRk",
        subTitle: "section 5"),
    AdditinalCourceModel(
        image:
            "https://th.bing.com/th/id/OIP.6INpILSfB6MhnEYHlvEN4QHaG4?rs=1&pid=ImgDetMain",
        title: "ms excel",
        youtubeId: "L3aRR1nLsoE",
        subTitle: "section 6"),
    AdditinalCourceModel(
        image:
            "https://th.bing.com/th/id/OIP.6INpILSfB6MhnEYHlvEN4QHaG4?rs=1&pid=ImgDetMain",
        title: "ms excel",
        youtubeId: "g5AaAhIThcw",
        subTitle: "section 7"),
    AdditinalCourceModel(
        image:
            "https://th.bing.com/th/id/OIP.6INpILSfB6MhnEYHlvEN4QHaG4?rs=1&pid=ImgDetMain",
        title: "ms excel",
        youtubeId: "BMMuF5ejSxE",
        subTitle: "section 8")
  ];

  static List<AdditionalCourseListModel> courseList = [
    AdditionalCourseListModel(
        image:
            "https://resources.reed.co.uk/courses/coursemedia/280228/ba7a86b7-8aac-4b5b-a870-c7a556d93d85_cover.webp",
        title: "Spoken English",
        courselist: spokenCourseSection),
    AdditionalCourseListModel(
        image:
            "https://th.bing.com/th/id/OIP.6INpILSfB6MhnEYHlvEN4QHaG4?rs=1&pid=ImgDetMain",
        title: "Ms Excel",
        courselist: msExcelCourseSection)
  ];
}

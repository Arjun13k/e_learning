import 'package:e_learning/model/pyq_catergory_model/pyq_category_model.dart';
import 'package:e_learning/model/pyq_catergory_model/pyq_list_model.dart';
import 'package:flutter/material.dart';

class PyqPdfScreenController with ChangeNotifier {
  static List<ListOfQuestionModel> mathsList = [
    ListOfQuestionModel(listOfQuestion: [
      "https://firebasestorage.googleapis.com/v0/b/e-learning-98fdb.appspot.com/o/PYQ%20PDF%2FSSLC%2FMaths%2FMATHS%20Question%20Paper%20English%20Medium%20SSLC%20Exam%20March%202019.pdf?alt=media&token=58a3d555-81c4-4184-bed8-dd2eb06cbadb"
    ])
  ];
  static List<ListOfQuestionModel> hindiList = [
    ListOfQuestionModel(listOfQuestion: [""])
  ];
  static List<ListOfQuestionModel> socialScienceList = [
    ListOfQuestionModel(listOfQuestion: [""])
  ];
  static List<ListOfQuestionModel> physicsList = [
    ListOfQuestionModel(listOfQuestion: [""])
  ];
  static List<ListOfQuestionModel> chemistryList = [
    ListOfQuestionModel(listOfQuestion: [""])
  ];
  static List<ListOfQuestionModel> biology = [
    ListOfQuestionModel(listOfQuestion: [""])
  ];

  static List<SubjectCategoryModel> subjectCategoryList = [
    SubjectCategoryModel(
        image:
            "https://images.vexels.com/media/users/3/195896/raw/6e68912e8b4646d078340ec3603e1d54-geometry-elements-illustration-pack.jpg",
        title: "MATHS",
        listOfQuestionDetails: PyqPdfScreenController.mathsList),
    SubjectCategoryModel(
        image:
            "https://www.thestatesman.com/wp-content/uploads/2020/09/QT-Hindi.jpg",
        title: "HINDI",
        listOfQuestionDetails: PyqPdfScreenController.hindiList),
    SubjectCategoryModel(
        image: "https://cdn.wallpapersafari.com/28/29/nqEAve.png",
        title: "Social Science",
        listOfQuestionDetails: PyqPdfScreenController.socialScienceList),
    SubjectCategoryModel(
        image: "https://miro.medium.com/max/7200/1*BIDkyWzyOGW-Qt2F2xKmJA.jpeg",
        title: "PHYSICS",
        listOfQuestionDetails: PyqPdfScreenController.physicsList),
    SubjectCategoryModel(
        image:
            "https://th.bing.com/th/id/OIP.CP66Qh9DqL_66ESN6Hzu6wAAAA?rs=1&pid=ImgDetMain",
        title: "CHEMISTRY",
        listOfQuestionDetails: PyqPdfScreenController.chemistryList),
    SubjectCategoryModel(
        image: "https://www.susla.edu/assets/susla/images/Biology.jpg",
        title: "BIOLOGY",
        listOfQuestionDetails: PyqPdfScreenController.biology)
  ];
}

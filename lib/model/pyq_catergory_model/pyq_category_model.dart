import 'package:e_learning/model/pyq_catergory_model/pyq_list_model.dart';

class SubjectCategoryModel {
  String image;
  String title;
  List<ListOfQuestionModel> listOfQuestionDetails;
  SubjectCategoryModel(
      {required this.image,
      required this.title,
      required this.listOfQuestionDetails});
}

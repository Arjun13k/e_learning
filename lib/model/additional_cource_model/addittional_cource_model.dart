class AdditinalCourceModel {
  String image;
  String title;
  String youtubeId;
  String subTitle;

  AdditinalCourceModel({
    required this.image,
    required this.title,
    required this.youtubeId,
    required this.subTitle,
  });
}

class AdditionalCourseListModel {
  String image;
  String title;
  List<AdditinalCourceModel> courselist;
  AdditionalCourseListModel(
      {required this.image, required this.title, required this.courselist});
}

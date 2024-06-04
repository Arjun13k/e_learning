import 'package:e_learning/controller/additional_course_controller/additional_course_controller.dart';
import 'package:e_learning/model/additional_cource_model/addittional_cource_model.dart';
import 'package:e_learning/view/classesScreen/widget/spoken_english_class.dart';
import 'package:flutter/material.dart';

class SpokenENglishSEctionList extends StatefulWidget {
  SpokenENglishSEctionList(
      {super.key, required this.additionalCourseListModel});

  final AdditionalCourseListModel additionalCourseListModel;

  @override
  State<SpokenENglishSEctionList> createState() =>
      _SpokenENglishSEctionListState();
}

class _SpokenENglishSEctionListState extends State<SpokenENglishSEctionList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.separated(
            itemBuilder: (context, index) => Material(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => YoutubeVideo(
                                      initialId: widget
                                          .additionalCourseListModel
                                          .courselist[index]
                                          .youtubeId),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(widget
                                        .additionalCourseListModel
                                        .courselist[index]
                                        .image),
                                    fit: BoxFit.cover),
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 100,
                            width: 100,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  widget.additionalCourseListModel
                                      .courselist[index].subTitle
                                      .toUpperCase(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                    widget.additionalCourseListModel
                                        .courselist[index].title
                                        .toUpperCase(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25)),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
            itemCount: widget.additionalCourseListModel.courselist.length),
      ),
    );
  }
}

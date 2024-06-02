import 'package:e_learning/controller/additional_course_controller/additional_course_controller.dart';
import 'package:e_learning/global/colors/colors.dart';
import 'package:e_learning/view/classesScreen/widget/spoken_english_class.dart';
import 'package:e_learning/view/homescreen/widgets/drawer_widget/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ClassScreen extends StatefulWidget {
  const ClassScreen({super.key});

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  @override
  Widget build(BuildContext context) {
    final additionalclassPro = Provider.of<AdditionalCourseController>(context);
    return Scaffold(
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      appBar: AppBar(
        title: Text(
          "E-LEARNING",
          style: TextStyle(
              color: ColorConstant.titleColor,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Material(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  child: Center(
                      child: Text("Additional Courses",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ))),
                )),
            SizedBox(
              height: 20,
            ),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SpokenEnglish(),
                                  ));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          AdditionalCourseController
                                              .courseList[index].image),
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
                                  Text("FREE CONTENT"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("VIDEOS"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("FILES")
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                      AdditionalCourseController
                                          .courseList[index].title
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
                separatorBuilder: (context, index) => SizedBox(
                      height: 20,
                    ),
                itemCount: AdditionalCourseController.courseList.length),
          ],
        ),
      ),
    );
  }
}

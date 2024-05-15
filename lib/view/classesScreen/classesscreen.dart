import 'package:e_learning/global/colors/colors.dart';
import 'package:e_learning/view/homescreen/widgets/drawer_widget/drawer_widget.dart';
import 'package:flutter/material.dart';

class ClassScreen extends StatefulWidget {
  const ClassScreen({super.key});

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  @override
  Widget build(BuildContext context) {
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
      body: Column(
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
          Material(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          height: 100,
                          width: 100,
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
                                Text("SPOKEN ENGLISH",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25)),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(10)),
                          height: 100,
                          width: 100,
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
                                Text("SPOKEN ENGLISH",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25)),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

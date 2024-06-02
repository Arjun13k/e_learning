import 'dart:ui';

import 'package:e_learning/controller/pyq_pdf_controller/pyq_pdf.dart';
import 'package:e_learning/global/colors/colors.dart';
import 'package:e_learning/view/homescreen/widgets/pyq_question/widget/class_10/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Class_10 extends StatefulWidget {
  const Class_10({super.key});

  @override
  State<Class_10> createState() => _Class_10State();
}

class _Class_10State extends State<Class_10> {
  @override
  Widget build(BuildContext context) {
    final class10Pro = Provider.of<PyqPdfScreenController>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 15),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 200,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15),
            itemCount: PyqPdfScreenController.subjectCategoryList.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuestionScreen(),
                    ));
              },
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            PyqPdfScreenController
                                .subjectCategoryList[index].image,
                            scale: 1),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 10)
                      ]),
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                      // child: Center(
                      //     child: Text(
                      //   PyqPdfScreenController.subjectCategoryList[index].title
                      //       .toString()
                      //       .toUpperCase(),
                      //   textAlign: TextAlign.center,
                      //   style: TextStyle(
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 30,
                      //       color: Colors.black),
                      // )),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

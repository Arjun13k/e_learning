import 'package:e_learning/global/colors/colors.dart';
import 'package:e_learning/view/homescreen/widgets/pyq_question/widget/Pyq_list.dart';
import 'package:flutter/material.dart';

class PyqQuestion extends StatefulWidget {
  const PyqQuestion({super.key});

  @override
  State<PyqQuestion> createState() => _PyqQuestionState();
}

class _PyqQuestionState extends State<PyqQuestion> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PyqList(),
            ));
      },
      child: Container(
        height: 130,
        width: 130,
        padding: EdgeInsets.symmetric(),
        decoration: BoxDecoration(
            color: ColorConstant.whiteColor,
            borderRadius: BorderRadius.circular(14)),
      ),
    );
  }
}

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
        height: 110,
        width: 110,
        padding: EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
            color: ColorConstant.whiteColor,
            borderRadius: BorderRadius.circular(14)),
        child: Column(
          children: [
            Image.asset("asset/image/pyq icon pdf.webp", scale: 6),
            Text(
              "PYQ",
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                  fontSize: 11,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}

import 'package:e_learning/global/colors/colors.dart';
import 'package:e_learning/view/homescreen/widgets/feedback/feedback_screen.dart';
import 'package:flutter/material.dart';

class FeedBackScreen extends StatefulWidget {
  const FeedBackScreen({super.key});

  @override
  State<FeedBackScreen> createState() => _FeedBackScreenState();
}

class _FeedBackScreenState extends State<FeedBackScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FeedBackAlign(),
            ));
      },
      child: Container(
        height: 110,
        width: 110,
        padding: EdgeInsets.symmetric(vertical: 2),
        decoration: BoxDecoration(
            color: ColorConstant.whiteColor,
            borderRadius: BorderRadius.circular(14)),
        child: Column(
          children: [
            Image.asset(
              "asset/image/feedback-support-icon-concept_313674-1102.jpg",
              scale: 6,
            ),
            Text(
              "Feedback",
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                  fontSize: 11,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

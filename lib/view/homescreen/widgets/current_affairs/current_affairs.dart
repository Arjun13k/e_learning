import 'package:e_learning/global/colors/colors.dart';
import 'package:e_learning/view/homescreen/widgets/current_affairs/current_affairs_list/current_affairs_list.dart';
import 'package:flutter/material.dart';

class CurrentAffairContiner extends StatelessWidget {
  const CurrentAffairContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ListOfCurrentAffairs(),
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
            Image.asset(
              "asset/image/current affair.png",
              scale: 6,
            ),
            Text(
              "Current Affairs",
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

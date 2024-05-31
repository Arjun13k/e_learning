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
            image: DecorationImage(
                image: AssetImage("asset/image/current affair.png"),
                fit: BoxFit.fill),
            color: ColorConstant.whiteColor,
            borderRadius: BorderRadius.circular(14)),
        child: Text(
          "Current Affairs",
          style: TextStyle(fontSize: 8, color: Colors.black.withOpacity(.3)),
        ),
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}

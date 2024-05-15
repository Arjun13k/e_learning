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
        height: 130,
        width: 130,
        padding: EdgeInsets.symmetric(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://staticimg.amarujala.com/assets/images/results.amarujala.com/2021/05/17/750x506/current-affairs-2021_1621228520.jpeg"),
                fit: BoxFit.fill),
            color: ColorConstant.whiteColor,
            borderRadius: BorderRadius.circular(14)),
      ),
    );
  }
}

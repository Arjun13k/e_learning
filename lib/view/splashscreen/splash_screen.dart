import 'dart:async';

import 'package:e_learning/global/colors/colors.dart';
import 'package:e_learning/view/introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => IntroductionPost(),
          ),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.splashScreencolor,
      body: Center(
          child: Image.asset("asset/image/e-learning-icons-flat-vector.jpg")),
    );
  }
}

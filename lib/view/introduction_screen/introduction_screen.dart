import 'package:e_learning/view/loginscreen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionPost extends StatefulWidget {
  const IntroductionPost({super.key});

  @override
  State<IntroductionPost> createState() => _IntroductionPostState();
}

class _IntroductionPostState extends State<IntroductionPost> {
  @override
  void didChangeDependencies() {
    precacheImage(AssetImage("asset/image/3761510.jpg"), context);
    precacheImage(AssetImage("asset/image/18771.jpg"), context);
    precacheImage(
        AssetImage("asset/image/2004.i603.001_online_education_set-11.jpg"),
        context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
              titleWidget: Text(
                "Education Redefined For You",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              bodyWidget: Text(
                "Experience a personilized and adaptive learning journy with our app tailored to your unique needs and goals",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
              image: Image.asset(
                "asset/image/3761510.jpg",
              )),
          PageViewModel(
              titleWidget: Text("unlocking the world of possibilities",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  textAlign: TextAlign.left),
              bodyWidget: Text(
                "open the door to endeless opportunities by gaining knowledge and skills through our comprehensive educational resources",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.left,
              ),
              image: Image.asset("asset/image/18771.jpg")),
          PageViewModel(
              titleWidget: Text("Welcome",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
              bodyWidget: Text(
                "Welcome to our educational platform",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.left,
              ),
              image: Image.asset(
                  "asset/image/2004.i603.001_online_education_set-11.jpg"))
        ],
        showSkipButton: true,
        skip: Text("Skip"),
        next: Icon(Icons.arrow_forward),
        done: Text("Done"),
        onDone: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
              (route) => false);
        },
        onSkip: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
              (route) => false);
        },
        dotsDecorator: DotsDecorator(
            size: Size.square(10),
            activeSize: Size(20, 10),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}

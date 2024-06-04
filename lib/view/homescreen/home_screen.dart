import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_learning/controller/home_controller/home_controller.dart';
import 'package:e_learning/global/colors/colors.dart';
import 'package:e_learning/view/homescreen/widgets/current_affairs/current_affairs.dart';
import 'package:e_learning/view/homescreen/widgets/current_affairs/current_affairs_list/list/history_current_affair.dart';
import 'package:e_learning/view/homescreen/widgets/demo_class/demo_class.dart';
import 'package:e_learning/view/homescreen/widgets/demo_class/demo_class_list.dart';
import 'package:e_learning/view/homescreen/widgets/drawer_widget/drawer_widget.dart';
import 'package:e_learning/view/homescreen/widgets/feedback/feedback.dart';
import 'package:e_learning/view/homescreen/widgets/pyq_question/pyq_question.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final homepro = context.watch<HomeScreenController>();
    return Scaffold(
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      backgroundColor: ColorConstant.borderColor,
      appBar: AppBar(
        title: Text(
          "E-LEARNING",
          style: TextStyle(
              color: ColorConstant.titleColor,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        centerTitle: true,
        actions: [Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: CarouselSlider(
                    items: List.generate(
                        homepro.image.length,
                        (index) => Material(
                              elevation: 5,
                              child: Container(
                                height: 200,
                                width: 400,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            NetworkImage(homepro.image[index]),
                                        fit: BoxFit.fill)),
                              ),
                            )),
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      height: 200,
                    ))
                //  Container(
                //   padding: EdgeInsets.symmetric(vertical: 30),
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(15),
                //       color: ColorConstant.splashScreencolor),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     children: [
                //       Text(
                //         "Advert images",
                //         style: TextStyle(
                //             color: ColorConstant.whiteColor,
                //             fontWeight: FontWeight.bold,
                //             fontSize: 25),
                //       ),
                //     ],
                //   ),
                // ),
                ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            SliverToBoxAdapter(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DemoCLassList(),
                      ));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorConstant.splashScreencolor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Demo Classes",
                        style: TextStyle(
                            color: ColorConstant.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Image.network(
                        "https://www.shauryaacademyindia.com/wp-content/uploads/2017/08/demo.png",
                        scale: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CurrentAffairContiner(),
                  PyqQuestion(),
                  FeedBackScreen()
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CurrentAffairContiner(),
                  PyqQuestion(),
                  FeedBackScreen()
                ],
              ),
            ),
            // SliverGrid(
            //     delegate: SliverChildBuilderDelegate(
            //         childCount: 6,
            //         (context, index) => Container(
            //               decoration: BoxDecoration(
            //                   color: ColorConstant.whiteColor,
            //                   borderRadius: BorderRadius.circular(10)),
            //               child: Center(child: Text("related to subject")),
            //             )),
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 3,
            //         mainAxisSpacing: 10,
            //         crossAxisSpacing: 10)),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            SliverToBoxAdapter(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HistoryGk(),
                      ));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorConstant.splashScreencolor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Did you know",
                        style: TextStyle(
                            color: ColorConstant.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Image.asset(
                        "asset/image/did-you-know-sticker-with-yellow-bulb-and-speech-bubble-illustration-free-vector-removebg-preview.png",
                        scale: 5,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CurrentAffairContiner(),
                  PyqQuestion(),
                  FeedBackScreen()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

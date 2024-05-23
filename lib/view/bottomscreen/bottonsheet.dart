import 'package:e_learning/global/colors/colors.dart';
import 'package:e_learning/view/bookmarkscreen/bookmarkscreen.dart';
import 'package:e_learning/view/classesScreen/classesscreen.dart';
import 'package:e_learning/view/homescreen/home_screen.dart';
import 'package:e_learning/view/profilescreen/profilescreen.dart';
import 'package:flutter/material.dart';

class BottomSheetNavigator extends StatefulWidget {
  const BottomSheetNavigator({super.key});

  @override
  State<BottomSheetNavigator> createState() => _BottomSheetNavigatorState();
}

class _BottomSheetNavigatorState extends State<BottomSheetNavigator> {
  int indexValue = 0;
  final List screen = [
    MainScreen(),
    ClassScreen(),
    BookmarkScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[indexValue],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              indexValue = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorConstant.borderColor,
          currentIndex: indexValue,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.group), label: "Classes"),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Store"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_pin), label: "Profile")
          ]),
    );
  }
}

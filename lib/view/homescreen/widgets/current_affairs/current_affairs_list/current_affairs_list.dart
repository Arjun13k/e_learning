import 'package:e_learning/view/homescreen/widgets/current_affairs/current_affairs_list/list/history_current_affair.dart';
import 'package:e_learning/view/homescreen/widgets/current_affairs/current_affairs_list/list/international_current_affair.dart';
import 'package:e_learning/view/homescreen/widgets/current_affairs/current_affairs_list/list/quiz_current_affair.dart';
import 'package:e_learning/view/homescreen/widgets/current_affairs/current_affairs_list/list/recent_current_affair.dart';
import 'package:flutter/material.dart';

class ListOfCurrentAffairs extends StatefulWidget {
  const ListOfCurrentAffairs({super.key});

  @override
  State<ListOfCurrentAffairs> createState() => _ListOfCurrentAffairsState();
}

class _ListOfCurrentAffairsState extends State<ListOfCurrentAffairs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Current Affairs",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecentGk(),
                    ));
              },
              child: Material(
                  elevation: 6,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      "Recent Current Affairs",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    )),
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InternationalGk(),
                    ));
              },
              child: Material(
                  elevation: 6,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      "Today's International Current Affairs",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    )),
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HistoryGk(),
                    ));
              },
              child: Material(
                  elevation: 6,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      "History Of Today",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    )),
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizGk(),
                    ));
              },
              child: Material(
                  elevation: 6,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      "Quiz For Today",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    )),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

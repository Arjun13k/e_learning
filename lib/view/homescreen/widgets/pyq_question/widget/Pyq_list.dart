import 'package:e_learning/view/homescreen/widgets/pyq_question/widget/class_10/class_10.dart';
import 'package:flutter/material.dart';

class PyqList extends StatefulWidget {
  const PyqList({super.key});

  @override
  State<PyqList> createState() => _PyqListState();
}

class _PyqListState extends State<PyqList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              elevation: 5,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Class_10(),
                      ));
                },
                child: ListTile(
                  title: Center(
                      child: Text(
                    "Class 10",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  )),
                ),
              ),
            ),
            Material(
              elevation: 5,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Class_10(),
                      ));
                },
                child: ListTile(
                  title: Center(
                      child: Text(
                    "Class 9",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  )),
                ),
              ),
            ),
            Material(
              elevation: 5,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Class_10(),
                      ));
                },
                child: ListTile(
                  title: Center(
                      child: Text(
                    "Class 8",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

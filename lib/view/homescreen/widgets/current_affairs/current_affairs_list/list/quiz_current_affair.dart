import 'package:e_learning/controller/current_affairs_controller/current_affairs_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuizGk extends StatefulWidget {
  const QuizGk({super.key});

  @override
  State<QuizGk> createState() => _QuizGkState();
}

class _QuizGkState extends State<QuizGk> {
  @override
  void initState() {
    context.read<CurrentAffarirsCOntroller>().getQuizData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final recentpro = context.watch<CurrentAffarirsCOntroller>();

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(children: [
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => Material(
                    elevation: 6,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Center(
                          child: Text(
                        recentpro.quizmodel[index].question ?? "",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    )),
                separatorBuilder: (context, index) => SizedBox(
                      height: 15,
                    ),
                itemCount: recentpro.quizmodel.length)
          ]),
        ),
      ),
    );
  }
}

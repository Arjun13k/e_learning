import 'package:e_learning/controller/current_affairs_controller/current_affairs_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InternationalGk extends StatefulWidget {
  const InternationalGk({super.key});

  @override
  State<InternationalGk> createState() => _InternationalGkState();
}

class _InternationalGkState extends State<InternationalGk> {
  @override
  void initState() {
    context.read<CurrentAffarirsCOntroller>().getInternationalData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final internationalPro = context.watch<CurrentAffarirsCOntroller>();
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          shrinkWrap: true,
          itemBuilder: (context, index) => Material(
              elevation: 6,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Text(
                      internationalPro.international[index],
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )),
          separatorBuilder: (context, index) => SizedBox(
                height: 15,
              ),
          itemCount: internationalPro.international.length),
    );
  }
}

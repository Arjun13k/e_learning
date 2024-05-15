import 'package:e_learning/controller/current_affairs_controller/current_affairs_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HistoryGk extends StatefulWidget {
  const HistoryGk({super.key});

  @override
  State<HistoryGk> createState() => _HistoryGkState();
}

class _HistoryGkState extends State<HistoryGk> {
  @override
  void initState() {
    context.read<CurrentAffarirsCOntroller>().getHistoryData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final histroyPro = context.watch<CurrentAffarirsCOntroller>();
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          shrinkWrap: true,
          itemBuilder: (context, index) => Material(
              elevation: 6,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Text(
                      histroyPro.historyModel[index].date ?? "",
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      histroyPro.historyModel[index].description ?? "",
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )),
          separatorBuilder: (context, index) => SizedBox(
                height: 15,
              ),
          itemCount: histroyPro.historyModel.length),
    );
  }
}

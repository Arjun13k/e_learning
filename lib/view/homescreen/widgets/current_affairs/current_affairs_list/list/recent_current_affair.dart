import 'package:e_learning/controller/current_affairs_controller/current_affairs_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecentGk extends StatefulWidget {
  const RecentGk({super.key});

  @override
  State<RecentGk> createState() => _RecentGkState();
}

class _RecentGkState extends State<RecentGk> {
  @override
  void initState() {
    context.read<CurrentAffarirsCOntroller>().getRecentData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final recentProv = context.watch<CurrentAffarirsCOntroller>();
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
                      recentProv.recent[index],
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )),
          separatorBuilder: (context, index) => SizedBox(
                height: 15,
              ),
          itemCount: recentProv.recent.length),
    );
  }
}

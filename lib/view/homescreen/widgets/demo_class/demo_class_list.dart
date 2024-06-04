import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learning/controller/demo_controller/demo_controller.dart';
import 'package:e_learning/view/homescreen/widgets/demo_class/demo_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DemoCLassList extends StatefulWidget {
  const DemoCLassList({
    super.key,
  });

  @override
  State<DemoCLassList> createState() => _DemoCLassListState();
}

CollectionReference collectionref =
    FirebaseFirestore.instance.collection("class");

class _DemoCLassListState extends State<DemoCLassList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: StreamBuilder(
          stream: collectionref.snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text("Something Went wrong"));
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }

            return ListView.separated(
              shrinkWrap: true,
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                // Provider.of<DemoController>(context).demoClass =
                //     snapshot.data!.docs[index]["youtube id"];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DemoClassViedo(
                              initialId: snapshot.data!.docs[index]
                                  ["youtube id"]),
                        ));
                  },
                  child: Material(
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Center(
                          child: Text(
                        snapshot.data!.docs[index]["title"]
                            .toString()
                            .toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 30,
              ),
            );
          },
        )

        //  ListView.separated(
        //     itemBuilder: (context, index) => Container(),
        //     separatorBuilder: (context, index) => SizedBox(
        //           height: 10,
        //         ),
        //     itemCount: 5),
        );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learning/view/homescreen/widgets/demo_class/demo_class.dart';
import 'package:flutter/material.dart';

class DemoCLassList extends StatefulWidget {
  const DemoCLassList({
    super.key,
  });

  @override
  State<DemoCLassList> createState() => _DemoCLassListState();
}

CollectionReference collectionref =
    FirebaseFirestore.instance.collection("class");
List<Color> colors = [
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.pink,
  Colors.brown,
  Colors.grey,
];

class _DemoCLassListState extends State<DemoCLassList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Demo Class",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: StreamBuilder(
          stream: collectionref.snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text("Something Went wrong"));
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 10),
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
                            decoration: BoxDecoration(color: colors[index]),
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Center(
                                child: Text(
                              snapshot.data!.docs[index]["title"]
                                  .toString()
                                  .toUpperCase(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            )),
                          ),
                        ),
                      );
                    },
                  ),
                ],
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

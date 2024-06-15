import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({super.key});

  @override
  State<FeedBack> createState() => _FeedBackState();
}

CollectionReference collectionFeedback =
    FirebaseFirestore.instance.collection("feedback");

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: StreamBuilder(
            stream: collectionFeedback.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(child: Text("Something Went wrong"));
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }

              return Center(
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Material(
                            elevation: 5,
                            child: Container(
                              height: 50,
                              child: Center(
                                child: Text(
                                  snapshot.data!.docs[index]["feed"].toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                      separatorBuilder: (context, index) => SizedBox(
                            height: 20,
                          ),
                      itemCount: snapshot.data!.docs.length)

                  //  ,
                  );
            }));
  }
}

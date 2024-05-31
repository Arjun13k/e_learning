import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learning/controller/feedback_controller/feedback_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FeedBackAlign extends StatefulWidget {
  const FeedBackAlign({super.key});

  @override
  State<FeedBackAlign> createState() => _FeedBackAlignState();
}

class _FeedBackAlignState extends State<FeedBackAlign> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final feedbackPro = Provider.of<FeedbackController>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Feed Back",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: StreamBuilder(
          stream: feedbackPro.collectionRef.snapshots(),
          builder: (context, snapshot) {
            // if (snapshot.hasError) {
            //   return Center(child: Text("Something Went Wrrong"));
            // }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: feedbackPro.feedbackController,
                      decoration: InputDecoration(
                          filled: true,
                          hintText:
                              "Please take a moment to share your thoughts and experiences with us, as it helps us to improve our services and better meet your needs.",
                          hintMaxLines: 5,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          feedbackPro.feedSubmit();
                          setState(() {});
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Center(
                            child: Text(
                          "SUBMIT",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}

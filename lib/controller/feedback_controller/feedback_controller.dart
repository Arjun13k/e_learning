import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FeedbackController with ChangeNotifier {
  TextEditingController feedbackController = TextEditingController();
  CollectionReference collectionRef =
      FirebaseFirestore.instance.collection("feedback");
  Future feedSubmit() async {
    try {
      final addSubmission = {"feed": feedbackController.text};
      await collectionRef.add(addSubmission);
      feedbackController.clear();
      notifyListeners();
    } catch (e) {
      print(e.toString());
    }
  }
}

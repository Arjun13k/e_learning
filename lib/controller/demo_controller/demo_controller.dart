import 'package:e_learning/model/demo_model/demo_model.dart';
import 'package:flutter/material.dart';

class DemoController with ChangeNotifier {
  static List<DemoClassModel> demoModel = [
    DemoClassModel(title: "Hindi", youtubeId: "")
  ];

  DemoClassModel? demoClass;
}

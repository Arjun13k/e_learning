import 'dart:convert';

import 'package:e_learning/model/current_affairs_model/current_affair_international_model.dart';
import 'package:e_learning/model/current_affairs_model/current_affairs_history_model.dart';
import 'package:e_learning/model/current_affairs_model/current_affairs_quiz_model.dart';
import 'package:e_learning/model/current_affairs_model/current_affairs_recent_model.dart';
import 'package:e_learning/secretsCode/apiKey.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CurrentAffarirsCOntroller with ChangeNotifier {
  // Dictonary? currentRep;
  // Future getData() async {
  //   Uri url = Uri.parse(
  //       "https://Free-Dictionary.proxy-production.allthingsdev.co/api/v2/entries/en/Rural");

  //   var res = await http.get(url, headers: {'X-RapidAPI-Key': ''});

  //   if (res.statusCode == 200) {
  //     var decodedData = jsonDecode(res.body);
  //     currentRep = Dictonary.fromJson(decodedData);
  //     notifyListeners();
  //   } else {
  //     print("failed");
  //   }
  // }
  String baseurl = "https://current-affairs-of-india.p.rapidapi.com/";
  List<QuizModelApi> quizmodel = [];

  Future getQuizData() async {
    Uri url =
        Uri.parse("https://current-affairs-of-india.p.rapidapi.com/today-quiz");

    var res = await http.get(url, headers: {
      "X-RapidAPI-Key": currentAffairsApiKey,
      "X-RapidAPI-Host": "current-affairs-of-india.p.rapidapi.com"
    });
    if (res.statusCode == 200) {
      var decodedData = jsonDecode(res.body);

      quizmodel = quizModelApiListFromJson(res.body);
      // log(decodedData.toString());
      // currentRep = Dictonary.fromJson(decodedData);
      notifyListeners();
    } else {
      print("failed");
    }
  }

  List<HistoryModelApi> historyModel = [];
  Future getHistoryData() async {
    Uri url = Uri.parse(
        "https://current-affairs-of-india.p.rapidapi.com/history-of-today");

    var resp = await http.get(url, headers: {
      "X-RapidAPI-Key": currentAffairsApiKey,
      "X-RapidAPI-Host": "current-affairs-of-india.p.rapidapi.com"
    });

    if (resp.statusCode == 200) {
      var decodedData = jsonDecode(resp.body);
      historyModel = historyModelApiListFromJson(resp.body);

      notifyListeners();
    } else {
      print("failed");
    }
  }

  List<String> international = [];
  Future getInternationalData() async {
    Uri url = Uri.parse(
        "https://current-affairs-of-india.p.rapidapi.com/international-today");
    var resp = await http.get(url, headers: {
      "X-RapidAPI-Key": currentAffairsApiKey,
      "X-RapidAPI-Host": "current-affairs-of-india.p.rapidapi.com"
    });
    if (resp.statusCode == 200) {
      var decodedData = jsonDecode(resp.body);
      international = internationalModelApiListFromJson(resp.body);
      notifyListeners();
    } else {
      print("failed");
    }
  }

  List<String> recent = [];
  Future getRecentData() async {
    Uri url =
        Uri.parse("https://current-affairs-of-india.p.rapidapi.com/recent");
    var resp = await http.get(url, headers: {
      "X-RapidAPI-Key": currentAffairsApiKey,
      "X-RapidAPI-Host": "current-affairs-of-india.p.rapidapi.com"
    });
    if (resp.statusCode == 200) {
      var decodedData = jsonDecode(resp.body);
      recent = recentModelApiListFromJson(resp.body);
      notifyListeners();
    } else {
      print("failed");
    }
  }
}

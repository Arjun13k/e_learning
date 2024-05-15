// To parse this JSON data, do
//
//     final quizModelApi = quizModelApiFromJson(jsonString);

import 'dart:convert';

List<QuizModelApi> quizModelApiListFromJson(String str) =>
    List<QuizModelApi>.from(
        json.decode(str).map((x) => QuizModelApi.fromJson(x)));

String quizModelApiToJson(List<QuizModelApi> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class QuizModelApi {
  String? question;

  QuizModelApi({
    this.question,
  });

  factory QuizModelApi.fromJson(Map<String, dynamic> json) => QuizModelApi(
        question: json["question"],
      );

  Map<String, dynamic> toJson() => {
        "question": question,
      };
}

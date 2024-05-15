// To parse this JSON data, do
//
//     final historyModelApi = historyModelApiFromJson(jsonString);

import 'dart:convert';

List<HistoryModelApi> historyModelApiListFromJson(String str) =>
    List<HistoryModelApi>.from(
        json.decode(str).map((x) => HistoryModelApi.fromJson(x)));

String historyModelApiToJson(List<HistoryModelApi> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HistoryModelApi {
  String? date;
  String? description;

  HistoryModelApi({
    this.date,
    this.description,
  });

  factory HistoryModelApi.fromJson(Map<String, dynamic> json) =>
      HistoryModelApi(
        date: json["date"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "description": description,
      };
}

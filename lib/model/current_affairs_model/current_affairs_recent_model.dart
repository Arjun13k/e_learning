// To parse this JSON data, do
//
//     final recentModelApi = recentModelApiFromJson(jsonString);

import 'dart:convert';

List<String> recentModelApiListFromJson(String str) =>
    List<String>.from(json.decode(str).map((x) => x));

String recentModelApiToJson(List<String> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x)));

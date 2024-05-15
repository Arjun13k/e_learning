// To parse this JSON data, do
//
//     final internationalModelApi = internationalModelApiFromJson(jsonString);

import 'dart:convert';

List<String> internationalModelApiListFromJson(String str) =>
    List<String>.from(json.decode(str).map((x) => x));

String internationalModelApiToJson(List<String> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x)));

// To parse this JSON data, do
//
//     final responseApi = responseApiFromJson(jsonString);

// ignore_for_file: missing_return, avoid_print

import 'dart:convert';

ResponseApi responseApiFromJson(String str) =>
    ResponseApi.fromJson(json.decode(str));

String responseApiToJson(ResponseApi data) => json.encode(data.toJson());

class ResponseApi {
  String message;
  String error;
  bool succes;
  dynamic data;
  ResponseApi({
    this.message,
    this.error,
    this.succes,
  });

  factory ResponseApi.fromJson(Map<String, dynamic> json) {
    message = json["message"];
    error = json["error"];
    succes = json["succes"];

    try {
      data = json['data'];
    } catch (e) {
      print('Exception data $e');
    }
  }

  Map<String, dynamic> toJson() => {
        "message": message,
        "error": error,
        "succes": succes,
      };
}

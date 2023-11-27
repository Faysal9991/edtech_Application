// To parse this JSON data, do
//
//     final playListModel = playListModelFromJson(jsonString);

import 'dart:convert';

PlayListModel playListModelFromJson(String str) => PlayListModel.fromJson(json.decode(str));

String playListModelToJson(PlayListModel data) => json.encode(data.toJson());

class PlayListModel {
  List<Datum>? data;

  PlayListModel({
    this.data,
  });

  factory PlayListModel.fromJson(Map<String, dynamic> json) => PlayListModel(
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  String? field;
  String? link;
  String? id;
  bool? seen;

  Datum({
    this.field,
    this.link,
    this.id,
    this.seen,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    field: json["field"],
    link: json["link"],
    id: json["id"],
    seen: json["seen"],
  );

  Map<String, dynamic> toJson() => {
    "field": field,
    "link": link,
    "id": id,
    "seen": seen,
  };
}

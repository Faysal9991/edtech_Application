// To parse this JSON data, do
//
//     final bookMarkModel = bookMarkModelFromJson(jsonString);

import 'dart:convert';

BookMarkModel bookMarkModelFromJson(String str) => BookMarkModel.fromJson(json.decode(str));

String bookMarkModelToJson(BookMarkModel data) => json.encode(data.toJson());

class BookMarkModel {
  String? collctionId;
  int? videoId;
  String? link;

  BookMarkModel({
    this.collctionId,
    this.videoId,
    this.link,
  });

  factory BookMarkModel.fromJson(Map<String, dynamic> json) => BookMarkModel(
    collctionId: json["collctionID"],
    videoId: json["videoId"],
    link: json["link"],
  );

  Map<String, dynamic> toJson() => {
    "collctionID": collctionId,
    "videoId": videoId,
    "link": link,
  };
}

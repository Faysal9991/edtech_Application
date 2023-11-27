

import 'dart:convert';

UserInfoModel userInfoModelFromJson(String str) => UserInfoModel.fromJson(json.decode(str));

String userInfoModelToJson(UserInfoModel data) => json.encode(data.toJson());

class UserInfoModel {
  String? uid;
  String? isLogin;
  String? email;
  List<BookMark>? bookMark;
  String? username;

  UserInfoModel({
    this.uid,
    this.isLogin,
    this.email,
    this.bookMark,
    this.username,
  });

  factory UserInfoModel.fromJson(Map<String, dynamic> json) => UserInfoModel(
    uid: json["uid"],
    isLogin: json["isLogin"],
    email: json["email"],
    bookMark: json["bookMark"] == null ? [] : List<BookMark>.from(json["bookMark"]!.map((x) => BookMark.fromJson(x))),
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "uid": uid,
    "isLogin": isLogin,
    "email": email,
    "bookMark": bookMark == null ? [] : List<dynamic>.from(bookMark!.map((x) => x.toJson())),
    "username": username,
  };
}

class BookMark {
  String? link;
  String? playlistName;

  BookMark({
    this.link,
    this.playlistName,
  });

  factory BookMark.fromJson(Map<String, dynamic> json) => BookMark(
    link: json["link"],
    playlistName: json["playlistName"],
  );

  Map<String, dynamic> toJson() => {
    "link": link,
    "playlistName": playlistName,
  };
}

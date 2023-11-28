import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edtech_application/data/model/book_mark_model.dart';
import 'package:edtech_application/data/model/response/firebase_response.dart';
import 'package:edtech_application/data/model/response/playlist_info_model.dart';
import 'package:edtech_application/data/model/userInfo_model.dart';
import 'package:edtech_application/data/repository/home_repo.dart';
import 'package:edtech_application/util/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeProvider with ChangeNotifier {
  final HomeRepo homeRepo;
  final FirebaseFirestore firebaseFirestore;
  final SharedPreferences sharedPreferences;

  HomeProvider(
      {required this.homeRepo,
      required this.sharedPreferences,
      required this.firebaseFirestore});

  bool _isLoading = false;
  int videoIndex = 0;
  incrementVideoIndex() {
    videoIndex++;
    notifyListeners();
  }

  decrementVideoIndex() {
    videoIndex--;
    notifyListeners();
  }

  bool get isLoading => _isLoading;
  String getUserID() {
    return sharedPreferences.getString(AppConstant.userID) ?? "";
  }

  UserInfoModel userInfoModel = UserInfoModel();
  Future userInfo(Function callback) async {
    _isLoading = true;
    notifyListeners();
    FirebaseResponse response = await homeRepo.userInfo(getUserID());
    if (response.statusCode == 200) {
      userInfoModel = UserInfoModel.fromJson(response.response);
      callback(true, "Thank you Your account has been created");
      _isLoading = false;
      notifyListeners();
    } else {
      callback(false, response.response.toString());
    }
    _isLoading = false;
    notifyListeners();
  }

  List<PlayListModel> videoInfo = [];
  List documentId = [];
  Future playList() async {
    videoInfo.clear();
    documentId.clear();
    _isLoading = true;
    notifyListeners();

    firebaseFirestore.collection("Videos").get().then((documentID) {
      for (int i = 0; i < documentID.docs.length; i++) {
        documentId.add(documentID.docs[i].id);
        firebaseFirestore
            .collection("Videos")
            .doc(documentID.docs[i].id)
            .get()
            .then((response) {
          videoInfo.add(PlayListModel.fromJson(response.data()!));
          notifyListeners();
        });
      }
    });
    _isLoading = false;
    notifyListeners();
  }

  logout(Function callback) async {
    FirebaseResponse response = await homeRepo.logout();
    if (response.statusCode == 200) {
      callback(true, "See you again");
      sharedPreferences.remove(AppConstant.userID);
    } else {
      callback(false, "Sorry try again");
    }
  }

  List<BookMarkModel> bookMarkModel = [];
  Future getBookMark() async {
    firebaseFirestore
        .collection('bookMark')
        .doc(getUserID())
        .get()
        .then((data) {
      jsonDecode(data.get("bookMark")).forEach((element) async {
        bookMarkModel.add(BookMarkModel.fromJson(element));
      });
    });
  }

  Future setBookmark(
      int collectionId, String videoInk, int videoID, Function callback) async {
    if(bookMarkModel.length==0){
      bookMarkModel.add(BookMarkModel(
          collctionId: documentId[collectionId],
          videoId: videoID,
          link: videoInk));
      getBookMark();
      firebaseFirestore
          .collection('bookMark')
          .doc(getUserID())
          .set({"bookMark": jsonEncode(bookMarkModel)});
      callback(true, "Thanks successfully added");
      notifyListeners();
    }else{
      for (int i = 0; i < bookMarkModel.length; i++) {
        if (bookMarkModel[i].link == videoInk) {
          callback(false, "This video is already added in bookMark");
          notifyListeners();
        } else {
          bookMarkModel.add(BookMarkModel(
              collctionId: documentId[collectionId],
              videoId: videoID,
              link: videoInk));
          getBookMark();
          firebaseFirestore
              .collection('bookMark')
              .doc(getUserID())
              .set({"bookMark": jsonEncode(bookMarkModel)});
          callback(true, "Thanks successfully added");
          notifyListeners();
        }

      }
    }

  }

  playPreviousVideo({String? videoLink, YoutubePlayerController? controller}) {
    if (videoLink != null && videoLink.isNotEmpty && videoIndex > 0) {
      decrementVideoIndex();
      controller!.load(YoutubePlayer.convertUrlToId(videoLink)!);
      notifyListeners();
    } else {
      print('No previous videos.');
    }
  }

  playNextVideo({String? videoLink, YoutubePlayerController? controller,int? videoListLength}) {
    if (videoLink!=
        null &&
        videoLink.isNotEmpty &&
      videoIndex <
          videoListLength! - 1) {
  incrementVideoIndex();
      controller!.load(YoutubePlayer.convertUrlToId(videoLink)!);
 notifyListeners();
    } else {
      print('No more videos to play.');
    }
  }

}

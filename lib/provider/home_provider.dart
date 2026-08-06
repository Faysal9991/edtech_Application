import 'dart:convert';

import 'package:edtech_application/data/model/book_mark_model.dart';
import 'package:edtech_application/data/model/response/playlist_info_model.dart';
import 'package:edtech_application/data/model/userInfo_model.dart';
import 'package:edtech_application/util/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeProvider with ChangeNotifier {
  final SharedPreferences sharedPreferences;

  HomeProvider({required this.sharedPreferences});

  bool _isLoading = false;
  static const String _bookmarkStorageKey = 'localBookmarks';
  int videoIndex = 0;

  incrementVideoIndex() {
    videoIndex++;
    notifyListeners();
  }

  decrementVideoIndex() {
    videoIndex--;
    notifyListeners();
  }

  resetVideoIndex({int index = 0, bool notify = true}) {
    videoIndex = index;
    if (notify) {
      notifyListeners();
    }
  }

  bool get isLoading => _isLoading;

  String getUserID() {
    return sharedPreferences.getString(AppConstant.userID) ?? "";
  }

  UserInfoModel userInfoModel = UserInfoModel();

  Future userInfo(Function callback) async {
    _isLoading = true;
    notifyListeners();
    userInfoModel = UserInfoModel(
      username: sharedPreferences.getString(AppConstant.userName) ?? 'Learner',
      email: sharedPreferences.getString(AppConstant.userEmail) ?? '',
      uid: getUserID(),
    );
    _isLoading = false;
    notifyListeners();
    callback(true, "Profile loaded");
  }

  List<PlayListModel> videoInfo = [];
  List documentId = [];

  Future playList() async {
    videoInfo.clear();
    documentId.clear();
    _isLoading = true;
    notifyListeners();

    documentId.addAll(['flutter-basics', 'ui-design', 'career-skills']);
    videoInfo.addAll(_dummyPlaylists);
    videoIndex = 0;

    _isLoading = false;
    notifyListeners();
  }

  logout(Function callback) async {
    await sharedPreferences.remove(AppConstant.userID);
    callback(true, "See you again");
  }

  List<BookMarkModel> bookMarkModel = [];

  Future getBookMark() async {
    bookMarkModel.clear();
    final savedBookmarks = sharedPreferences.getString(_bookmarkStorageKey);
    if (savedBookmarks == null || savedBookmarks.isEmpty) {
      notifyListeners();
      return;
    }

    final List decodedBookmarks = jsonDecode(savedBookmarks);
    bookMarkModel.addAll(
      decodedBookmarks.map((element) => BookMarkModel.fromJson(element)),
    );
    notifyListeners();
  }

  Future setBookmark(int collectionId, String videoInk, int videoID,
      Function callback) async {
    final alreadyBookmarked =
        bookMarkModel.any((bookmark) => bookmark.link == videoInk);

    if (alreadyBookmarked) {
      callback(false, "This video is already added in bookMark");
      notifyListeners();
      return;
    }

    bookMarkModel.add(BookMarkModel(
      collctionId: documentId[collectionId],
      videoId: videoID,
      link: videoInk,
    ));
    await sharedPreferences.setString(
      _bookmarkStorageKey,
      jsonEncode(bookMarkModel.map((bookmark) => bookmark.toJson()).toList()),
    );
    callback(true, "Thanks successfully added");
    notifyListeners();
  }

  Future removeBookmark(int index) async {
    if (index < 0 || index >= bookMarkModel.length) {
      return;
    }

    bookMarkModel.removeAt(index);
    await sharedPreferences.setString(
      _bookmarkStorageKey,
      jsonEncode(bookMarkModel.map((bookmark) => bookmark.toJson()).toList()),
    );
    notifyListeners();
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

  playNextVideo({
    String? videoLink,
    YoutubePlayerController? controller,
    int? videoListLength,
  }) {
    if (videoLink != null &&
        videoLink.isNotEmpty &&
        videoIndex < videoListLength! - 1) {
      incrementVideoIndex();
      controller!.load(YoutubePlayer.convertUrlToId(videoLink)!);
      notifyListeners();
    } else {
      print('No more videos to play.');
    }
  }

  List<PlayListModel> get _dummyPlaylists => [
        PlayListModel(data: [
          Datum(
            field: 'Flutter Fundamentals',
            link: 'https://www.youtube.com/watch?v=VPvVD8t02U8',
            id: 'flutter-01',
            seen: false,
          ),
          Datum(
            field: 'Widgets and Layouts',
            link: 'https://www.youtube.com/watch?v=b_sQ9bMltGU',
            id: 'flutter-02',
            seen: false,
          ),
          Datum(
            field: 'State Management Basics',
            link: 'https://www.youtube.com/watch?v=3tm-R7ymwhc',
            id: 'flutter-03',
            seen: false,
          ),
        ]),
        PlayListModel(data: [
          Datum(
            field: 'UI Design Principles',
            link: 'https://www.youtube.com/watch?v=_Hp_dI0DzY4',
            id: 'design-01',
            seen: false,
          ),
          Datum(
            field: 'Responsive App Screens',
            link: 'https://www.youtube.com/watch?v=LeKLGzpsz9I',
            id: 'design-02',
            seen: false,
          ),
          Datum(
            field: 'Design System Basics',
            link: 'https://www.youtube.com/watch?v=RYDiDpW2VkM',
            id: 'design-03',
            seen: false,
          ),
        ]),
        PlayListModel(data: [
          Datum(
            field: 'Career Roadmap',
            link: 'https://www.youtube.com/watch?v=ysEN5RaKOlA',
            id: 'career-01',
            seen: false,
          ),
          Datum(
            field: 'Interview Preparation',
            link: 'https://www.youtube.com/watch?v=1qw5ITr3k9E',
            id: 'career-02',
            seen: false,
          ),
          Datum(
            field: 'Portfolio Review',
            link: 'https://www.youtube.com/watch?v=Q7AOvWpIVHU',
            id: 'career-03',
            seen: false,
          ),
        ]),
      ];
}

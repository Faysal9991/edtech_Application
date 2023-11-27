import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edtech_application/data/model/response/firebase_response.dart';
import 'package:edtech_application/data/model/response/playlist_info_model.dart';
import 'package:edtech_application/data/model/userInfo_model.dart';
import 'package:edtech_application/data/repository/home_repo.dart';
import 'package:edtech_application/util/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeProvider with ChangeNotifier {
  final HomeRepo homeRepo;
  final FirebaseFirestore firebaseFirestore;
  final SharedPreferences sharedPreferences;

  HomeProvider({required this.homeRepo,required this.sharedPreferences,required this.firebaseFirestore});

  bool _isLoading = false;

  bool get isLoading => _isLoading;
  String getUserID() {
    return sharedPreferences.getString(AppConstant.userID) ?? "";
  }
  UserInfoModel userInfoModel  = UserInfoModel();
  Future userInfo(Function callback) async {
    _isLoading = true;
    notifyListeners();
    FirebaseResponse response = await homeRepo.userInfo(getUserID());
    if (response.statusCode == 200) {
      userInfoModel = UserInfoModel.fromJson(response.response);
      callback(true,"Thank you Your account has been created");
      _isLoading = false;
      notifyListeners();
    } else {
      callback(false,response.response.toString());
    }
    _isLoading = false;
    notifyListeners();
  }

  List<PlayListModel> videoInfo =[];
  Future playList() async {
    videoInfo.clear();
    _isLoading = true;
    notifyListeners();
  try{
    firebaseFirestore.collection("Videos").get().then((documentID) {
   for(int i = 0;i<documentID.docs.length;i++){
     firebaseFirestore.collection("Videos").doc(documentID.docs[i].id).get().then((response){
       videoInfo.add(PlayListModel.fromJson(response.data()!));
       notifyListeners();
     });
   }
    });

  }on FirebaseException catch(e){

  }
 _isLoading = false;
  notifyListeners();
  }
  logout()async{
    sharedPreferences.remove(AppConstant.userID);
  }
}


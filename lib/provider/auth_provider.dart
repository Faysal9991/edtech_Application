import 'package:edtech_application/componnents/custom_snakbar.dart';
import 'package:edtech_application/data/model/response/firebase_response.dart';
import 'package:edtech_application/data/repository/auth_repo.dart';
import 'package:edtech_application/util/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider1 with ChangeNotifier {
  final AuthRepo authRepo;
  final SharedPreferences sharedPreferences;

  AuthProvider1({required this.authRepo,required this.sharedPreferences});

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future signup(
      String userName, String email, String password, Function callback) async {
    _isLoading = true;
    notifyListeners();
    FirebaseResponse response = await authRepo.signUP(
        userName: userName, email: email, password: password);
    if (response.statusCode == 200) {
      callback(true,"Thank you Your account has been created");
      _isLoading = false;
      notifyListeners();
    } else {
      callback(false,response.response.toString());
    }
    _isLoading = false;
    notifyListeners();
  }
  Future signIn(
 String email, String password, Function callback) async {
    _isLoading = true;
    notifyListeners();
    FirebaseResponse response = await authRepo.signIn(
        email: email, password: password);
    if (response.statusCode == 200) {
      callback(true,"Thank you Your account has been created");
      _isLoading = false;
      notifyListeners();
    } else {
      callback(false,response.response.toString());
    }
    _isLoading = false;
    notifyListeners();
  }

  Future <bool> getLoginAccess()async{

    if(
    sharedPreferences.get(AppConstant.userID)!= null
    ){
      return true;
    }else{
      return false;
    }
  }

  logout()async{
    sharedPreferences.remove(AppConstant.userID);
  }
}


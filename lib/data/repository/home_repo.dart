import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edtech_application/data/model/response/firebase_response.dart';
import 'package:edtech_application/util/app_constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeRepo {
  FirebaseAuth firebaseAuth;
  FirebaseFirestore firebaseFireStore;
  SharedPreferences sharedPreferences;

  HomeRepo({required this.sharedPreferences,
    required this.firebaseAuth,
    required this.firebaseFireStore});

  Future<FirebaseResponse>userInfo(String userID) async {
    try {
      dynamic response ;
       await firebaseFireStore.collection("users").doc(userID).get().then((value){

         response =value.data();
      });
      return FirebaseResponse.withSuccess(response, 200);
    } on FirebaseAuthException catch (error) {
      return FirebaseResponse.withError(error, 300);
    }
  }

  Future<FirebaseResponse>logout() async {
    try {
      dynamic response ;
      await firebaseAuth.signOut();
      return FirebaseResponse.withSuccess(response, 200);
    } on FirebaseAuthException catch (error) {
      return FirebaseResponse.withError(error, 300);
    }
  }

}
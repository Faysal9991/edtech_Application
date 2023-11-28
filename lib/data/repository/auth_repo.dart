import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edtech_application/data/model/response/firebase_response.dart';
import 'package:edtech_application/util/app_constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
   FirebaseAuth firebaseAuth;
   FirebaseFirestore firebaseFireStore;
   SharedPreferences sharedPreferences;

  AuthRepo({required this.sharedPreferences,
    required this.firebaseAuth,
    required this.firebaseFireStore});

  Future<FirebaseResponse>signUP({required String userName,
    required String email,
    required String password}) async {
    try {
      UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      await firebaseFireStore
          .collection('users')
          .doc(userCredential.user!.uid)
          .set({
        'username': userName,
        'email': email,
        'uid': userCredential.user!.uid,
      });
    return FirebaseResponse.withSuccess("", 200);
    } on FirebaseAuthException catch (error) {
      return FirebaseResponse.withError(error, 300);
    }
  }
   Future<FirebaseResponse>signIn({required String email, required String password}) async {
     try {
       UserCredential userCredential = await firebaseAuth.signInWithEmailAndPassword(
           email: email, password: password);
print("=============>${userCredential.user!.uid}");
       sharedPreferences .setString(AppConstant.userID, userCredential.user!.uid);
       return FirebaseResponse.withSuccess("", 200);
     } on FirebaseAuthException catch (error) {
       return FirebaseResponse.withError(error, 300);
     }
   }

}
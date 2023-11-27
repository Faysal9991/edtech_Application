

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edtech_application/data/repository/home_repo.dart';
import 'package:edtech_application/provider/auth_provider.dart';
import 'package:edtech_application/provider/home_provider.dart';
import 'package:edtech_application/provider/theme_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/repository/auth_repo.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Core if it has



  // Repository
  sl.registerLazySingleton(() => AuthRepo(sharedPreferences: sl(), firebaseAuth: sl(), firebaseFireStore: sl()));
  sl.registerLazySingleton(() => HomeRepo(sharedPreferences: sl(), firebaseAuth: sl(), firebaseFireStore: sl()));
  // Provider
  sl.registerFactory(() => ThemeProvider(sharedPreferences: sl()));
  sl.registerFactory(() => AuthProvider1(authRepo: sl(),sharedPreferences: sl()));
  sl.registerFactory(() => HomeProvider(homeRepo: sl(),sharedPreferences: sl(),firebaseFirestore: sl()));



  // External
final firebaseAuth = await FirebaseAuth.instance;
final firebaseFireStore = await FirebaseFirestore.instance;
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => firebaseAuth);
  sl.registerLazySingleton(() => firebaseFireStore);



}

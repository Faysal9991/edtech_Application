
import 'package:dio/dio.dart';
import 'package:edtech_application/data/datasource/remote/dio/dio_client.dart';
import 'package:edtech_application/data/datasource/remote/dio/logging_interceptor.dart';
import 'package:edtech_application/provider/theme_provider.dart';
import 'package:edtech_application/util/app_constant.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Core
  sl.registerLazySingleton(() => DioClient(AppConstant.baseUrl, sl(),
      sharedPreferences: sl(), loggingInterceptor: sl()));
  // Repository

  // Provider

  sl.registerFactory(() => ThemeProvider(sharedPreferences: sl()));


  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => LoggingInterceptor());
}

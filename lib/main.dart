import 'package:edtech_application/firebase_options.dart';
import 'package:edtech_application/provider/auth_provider.dart';
import 'package:edtech_application/provider/home_provider.dart';
import 'package:edtech_application/provider/theme_provider.dart';
import 'package:edtech_application/screens/authentication/sigin_in.dart';
import 'package:edtech_application/splash_screen.dart';
import 'package:edtech_application/util/helper.dart';
import 'package:edtech_application/util/theme/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'di_container.dart' as di;
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options:DefaultFirebaseOptions.currentPlatform);
  await di.init();


  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => di.sl<ThemeProvider>()),
      ChangeNotifierProvider(create: (context) => di.sl<AuthProvider1>()),
      ChangeNotifierProvider(create: (context) => di.sl<HomeProvider>()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey:Helper.navigatorKey,
      title: 'Flutter Demo',
      theme: Provider.of<ThemeProvider>(context,listen:false).darkTheme?AppTheme.getDarkModeTheme():AppTheme.getLightModeTheme(),
      home: const SplashScreen(),
    );
  }
}


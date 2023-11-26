import 'package:edtech_application/provider/theme_provider.dart';
import 'package:edtech_application/screens/authentication/sigin_in.dart';
import 'package:edtech_application/util/helper.dart';
import 'package:edtech_application/util/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'di_container.dart' as di;
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => di.sl<ThemeProvider>()),
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
      home: const SignInScreen(),
    );
  }
}


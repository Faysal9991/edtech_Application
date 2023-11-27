import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:edtech_application/provider/auth_provider.dart';
import 'package:edtech_application/provider/home_provider.dart';
import 'package:edtech_application/screens/authentication/sigin_in.dart';
import 'package:edtech_application/screens/home/home_page.dart';
import 'package:edtech_application/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    // TODO: implement initState



    Future.delayed(
        const Duration(seconds: 3),
            (){

          Provider.of<AuthProvider1>(context,listen: false).getLoginAccess().then((value){
            if(value){
              Helper.toScreen(const HomePageScreen());
            }else{
              Helper.toScreen(const SignInScreen());
            }
          });
        }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           FadeInDownBig(
             delay:const Duration(milliseconds: 10),
               duration: const Duration(milliseconds: 000),
               child: Text("WelCome to Edu Application",style: Theme.of(context).textTheme.labelLarge,)),

          ],
        ),
      ),
    );
  }
}
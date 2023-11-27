import 'package:animate_do/animate_do.dart';
import 'package:edtech_application/componnents/custom_snakbar.dart';
import 'package:edtech_application/componnents/custom_text_field.dart';
import 'package:edtech_application/provider/auth_provider.dart';
import 'package:edtech_application/screens/authentication/Sign_up.dart';
import 'package:edtech_application/screens/home/home_page.dart';
import 'package:edtech_application/util/animation/animation_widget.dart';
import 'package:edtech_application/util/helper.dart';
import 'package:edtech_application/util/theme/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider1>(

      builder: (context, provider,child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                    Theme.of(context).primaryColor,
                    Theme.of(context).secondaryHeaderColor,
                  ])),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FadeInUp(
                                duration: const Duration(milliseconds: 1000),
                                child:  Text(
                                  "Login",
                                  style:
                                  Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.white),
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            FadeInUp(
                                duration: const Duration(milliseconds: 1200),
                                child:  Text(
                                  "Welcome Back",
                                  style:
                                  Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(60),
                                topRight: Radius.circular(60))),
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 60,
                              ),
                              FadeInUp(
                                  duration: const Duration(milliseconds: 1400),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.shade200))),
                                    child:  CustomTextField(
                                      controller: email,
                                      fillColor: Colors.white,
                                      borderRadius: 25,
                                      hintText: "Enter Your Email",
                                    ),
                                  )),
                              const SizedBox(height: 10),
                              FadeInUp(
                                  duration: const Duration(milliseconds: 1500),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.shade200))),
                                    child:  CustomTextField(
                                      controller: password,
                                      fillColor: Colors.white,
                                      borderRadius: 25,
                                      hintText: "Enter Your Password",
                                    ),
                                  )),
                              const SizedBox(
                                height: 40,
                              ),
                              FadeInUp(
                                  duration: const Duration(milliseconds: 1600),
                                  child:  InkWell(
                                    onTap: (){
                                      infoSnack(context:context,message: "Coming Soon");
                                    },
                                    child: Text(
                                      "Forgot Password?",
                                      style: Theme.of(context).textTheme.bodyMedium,
                                    ),
                                  )),
                              FadeInUp(
                                  duration: const Duration(milliseconds: 1500),
                                  child:  Text.rich(
                                    TextSpan(
                                      text: "or ",
                                      style: Theme.of(context).textTheme.bodyMedium,
                                      children: [
                                        TextSpan(
                                          text: " Create a New  Account",
                                          style: Theme.of(context).textTheme.labelLarge,
                                          recognizer: TapGestureRecognizer()..onTap = (){
                                            Helper.toScreen(const SignUPScreen());
                                          }
                                        )
                                      ]
                                    )

                                  )),

                              const SizedBox(
                                height: 40,
                              ),
                              FadeInUp(
                                  duration: const Duration(milliseconds: 1700),
                                  child: MaterialButton(
                                    onPressed: () {
                                      provider.signIn(email.text, password.text, (value,message){
                                        if(value){
                                          successSnack(message: "Welcome to Edu",context: context);
                                          Helper.toRemoveUntilScreen(const HomePageScreen());
                                        }else{
                                          errorSnack(message: message,context: context);
                                        }
                                      });
                                    },
                                    height: 50,
                                    color: Theme.of(context).primaryColor,
                                    // margin: EdgeInsets.symmetric(horizontal: 50),

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    // decoration: BoxDecoration(
                                    // ),
                                    child: const Center(
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )),

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}

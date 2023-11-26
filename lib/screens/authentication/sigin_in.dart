import 'package:animate_do/animate_do.dart';
import 'package:edtech_application/componnents/custom_text_field.dart';
import 'package:edtech_application/screens/authentication/Sign_up.dart';
import 'package:edtech_application/util/animation/animation_widget.dart';
import 'package:edtech_application/util/helper.dart';
import 'package:edtech_application/util/theme/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                                child: const CustomTextField(
                                  fillColor: Colors.white,
                                  borderRadius: 25,
                                  hintText: "Email or Phone number",
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
                                child: const CustomTextField(
                                  fillColor: Colors.white,
                                  borderRadius: 25,
                                  hintText: "Password",
                                ),
                              )),
                          const SizedBox(
                            height: 40,
                          ),
                          FadeInUp(
                              duration: const Duration(milliseconds: 1600),
                              child:  Text(
                                "Forgot Password?",
                                style: Theme.of(context).textTheme.bodyMedium,
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
                                onPressed: () {},
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
}

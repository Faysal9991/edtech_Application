import 'package:animate_do/animate_do.dart';
import 'package:edtech_application/componnents/custom_text_field.dart';
import 'package:edtech_application/util/helper.dart';
import 'package:edtech_application/util/theme/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUPScreen extends StatelessWidget {
  const SignUPScreen({super.key});

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
                            child: const Text(
                              "Sign Up",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        FadeInUp(
                            duration: const Duration(milliseconds: 1300),
                            child: const Text(
                              "Lets Create An Account",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
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

                          const SizedBox(
                            height: 40,
                          ),
                          FadeInUp(
                              duration: const Duration(milliseconds: 1000),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200))),
                                child:  const CustomTextField(
                                  fillColor: Colors.white,
                                  borderRadius: 25,
                                 hintText: "Enter Your User Name",
                                ),
                              )),
                          SizedBox(height: 10,),
                          FadeInUp(
                              duration: const Duration(milliseconds: 1100),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200))),
                                child:  const CustomTextField(
                                  fillColor: Colors.white,
                                  borderRadius: 25,
                                  hintText: "Enter your Email",
                                ),
                              )),
                          SizedBox(height: 10,),
                          FadeInUp(
                              duration: const Duration(milliseconds: 1200),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200))),
                                child:  const CustomTextField(
                                  fillColor: Colors.white,
                                  borderRadius: 25,
                                  hintText: "Enter Password",
                                ),
                              )),
                          SizedBox(height: 10,),
                          FadeInUp(
                       duration: const Duration(milliseconds: 1400),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200))),
                                child:  const CustomTextField(
                                  fillColor: Colors.white,
                                  borderRadius: 25,
                                  hintText: "Re-Enter Password",
                                ),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeInUp(
                              duration: const Duration(milliseconds: 1500),
                              child:  Text.rich(
                                  TextSpan(
                                      text: "Already have an account ",
                                      style: Theme.of(context).textTheme.bodyMedium,
                                      children: [
                                        TextSpan(
                                            text: " Sign In",
                                            style: Theme.of(context).textTheme.labelLarge,
                                            recognizer: TapGestureRecognizer()..onTap = (){
                                              Helper.back();
                                            }
                                        )
                                      ]
                                  )

                              )),

                          const SizedBox(
                            height: 40,
                          ),
                          FadeInUp(
                              duration: const Duration(milliseconds: 1600),
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
                                    "Continue",
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

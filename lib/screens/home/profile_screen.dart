import 'package:edtech_application/componnents/custom_appbar.dart';
import 'package:edtech_application/componnents/custom_snakbar.dart';
import 'package:edtech_application/provider/home_provider.dart';
import 'package:edtech_application/screens/authentication/sigin_in.dart';
import 'package:edtech_application/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          body: Column(
            children: [
              customAppbar(context, provider),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 36,
                                backgroundColor: Theme.of(context).primaryColor,
                                child: const Icon(
                                  Icons.person_rounded,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'Edu Learner',
                                style: Theme.of(context).textTheme.headlineSmall,
                              ),
                              const SizedBox(height: 6),
                              Text(
                                'Bookmarks: ${provider.bookMarkModel.length}',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton.icon(
                        onPressed: () {
                          provider.logout((value, message) {
                            if (value) {
                              successSnack(context: context, message: message);
                              Helper.toRemoveUntilScreen(const SignInScreen());
                            } else {
                              errorSnack(context: context, message: message);
                            }
                          });
                        },
                        icon: const Icon(Icons.logout_rounded),
                        label: const Text('Log out'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

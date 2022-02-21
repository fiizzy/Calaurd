import 'package:calaurd/views/home/home.dart';
import 'package:calaurd/views/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RoutingLogic extends StatelessWidget {
  static bool? isLoggedIn;
  static Future<void> checkFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isLoggedIn = (prefs.getBool('isLoggedIn') ?? false);
    print('Shared pereferences say $isLoggedIn');
  }

  @override
  Widget build(BuildContext context) {
    print(isLoggedIn);
    if ((isLoggedIn!)) {
      return Home();
    } else
      return Onboarding();
  }
}

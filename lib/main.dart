import 'package:calaurd/styles/styles.dart';
import 'package:calaurd/views/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => Onboarding(),
      },
    );
  }
}

import 'package:calaurd/styles/styles.dart';
import 'package:calaurd/views/home/home.dart';
import 'package:calaurd/views/onboarding/onboarding.dart';
import 'package:calaurd/views/uploadImage/uploadImage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        '/home': (context) => Home(),
        '/uploadImage': (context) => UploadImage(),
      },
    );
  }
}

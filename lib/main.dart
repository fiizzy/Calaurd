import 'package:calaurd/styles/styles.dart';
import 'package:calaurd/views/home/home.dart';
import 'package:calaurd/views/imagePreviewDisplay/selectedImage.dart';
import 'package:calaurd/views/onboarding/onboarding.dart';
import 'package:calaurd/views/uploadImage/uploadImage.dart';
import 'providers/imageProvider.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static dynamic isLoggedIn;
  // Check users first time for onboarding screen
  Future checkFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isLoggedIn = (prefs.getBool('isLoggedIn') ?? true);
    print('Shared pereferences say $isLoggedIn');
    await prefs.setBool('isLoggedIn', isLoggedIn);
  }

  @override
  Widget build(BuildContext context) {
    checkFirstTime();
    return ChangeNotifierProvider<ImageProviderClass>(
        create: (context) => ImageProviderClass(),
        child: MaterialApp(
          title: 'Calaurd',
          theme: AppTheme.lightTheme,
          initialRoute: isLoggedIn == true ? '/' : '/home',
          routes: {
            '/': (context) => Onboarding(),
            '/home': (context) => Home(),
            '/uploadImage': (context) => UploadImage(),
            '/selectedImage': (context) => SelectedImage(),
          },
        ));
  }
}

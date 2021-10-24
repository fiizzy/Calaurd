import 'package:calaurd/styles/styles.dart';
import 'package:calaurd/utils/routing.dart';
import 'package:calaurd/views/home/home.dart';
import 'package:calaurd/views/imagePreviewDisplay/selectedImage.dart';
import 'package:calaurd/views/onboarding/onboarding.dart';
import 'package:calaurd/views/uploadImage/uploadImage.dart';
import 'providers/imageProvider.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RoutingLogic.checkFirstTime();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ImageProviderClass>(
        create: (context) => ImageProviderClass(),
        child: MaterialApp(
          title: 'Calaurd',
          theme: AppTheme.lightTheme,
          initialRoute: '/routingLogic',
          routes: {
            '/': (context) => Onboarding(),
            '/home': (context) => Home(),
            '/uploadImage': (context) => UploadImage(),
            '/selectedImage': (context) => SelectedImage(),
            '/routingLogic': (context) => RoutingLogic(),
          },
        ));
  }
}

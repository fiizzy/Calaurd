import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
  @override
  _OnboardingScreen createState() => _OnboardingScreen();
}

class _OnboardingScreen extends State<OnboardingScreen> {
  _OnboardingScreen();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Stack(children: [
        Positioned(
          left: 0,
          width: 414.0,
          top: 0,
          height: 896.0,
          child: Image.asset(
            'assets/images/15_504.png',
            package: 'calaurd',
            width: 414.000,
            height: 896.000,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 20.0,
          width: 374.0,
          top: 791.513,
          height: 50.0,
          child: Container(
            width: 374.000,
            height: 50.000,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
          ),
        ),
        Positioned(
          left: 0,
          width: 414.0,
          top: 0,
          height: 896.0,
          child: Container(
            width: 414.000,
            height: 896.000,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
          ),
        ),
        Positioned(
          left: 133.0,
          width: 148.0,
          top: 807.013,
          height: 19.0,
          child: Container(
              width: 148.000,
              height: 19.000,
              child: AutoSizeText(
                'GET STARTED',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 4.48,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              )),
        ),
        Positioned(
          left: 380.264,
          width: 14.252,
          top: 85.271,
          height: 112.425,
          child: Image.asset(
            'assets/images/15_252.png',
            package: 'calaurd',
            width: 14.252,
            height: 112.425,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 27.514,
          width: 350.257,
          top: 407.0,
          height: 82.0,
          child: Container(
              width: 350.257,
              height: 82.000,
              child: AutoSizeText(
                'First, it was Black and  white.',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 34,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              )),
        ),
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class OnboardingScreen7 extends StatefulWidget {
  const OnboardingScreen7({Key? key}) : super(key: key);
  @override
  _OnboardingScreen7 createState() => _OnboardingScreen7();
}

class _OnboardingScreen7 extends State<OnboardingScreen7> {
  _OnboardingScreen7();

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
            'assets/images/409_137.png',
            package: 'calaurd',
            width: 414.000,
            height: 896.000,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 0.315,
          width: 413.685,
          top: 468.5,
          height: 427.5,
          child: Container(
            width: 413.685,
            height: 427.500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
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
          left: 156.0,
          width: 102.0,
          top: 808.013,
          height: 17.0,
          child: Container(
              width: 102.000,
              height: 17.000,
              child: AutoSizeText(
                'ADD EMAIL',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 3.9200000000000004,
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
            'assets/images/409_139.png',
            package: 'calaurd',
            width: 14.252,
            height: 112.425,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 20.0,
          width: 374.0,
          top: 578.156,
          height: 1.0,
          child: Container(
            width: 374.000,
            height: 1.000,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          left: 20.0,
          width: 101.0,
          top: 549.441,
          height: 19.0,
          child: Container(
              width: 101.000,
              height: 19.000,
              child: AutoSizeText(
                'Email Address',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              )),
        ),
        Positioned(
          left: 27.514,
          width: 350.257,
          top: 407.0,
          height: 41.0,
          child: Container(
              width: 350.257,
              height: 41.000,
              child: AutoSizeText(
                'And all was Calaurd',
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
        Positioned(
          left: 20.0,
          width: 353.388,
          top: 618.757,
          height: 38.0,
          child: Container(
              width: 353.388,
              height: 38.000,
              child: AutoSizeText(
                'This is to help us give you future updates on calaurd',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              )),
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
          left: 188.612,
          width: 36.776,
          top: 481.357,
          height: 36.776,
          child: Image.asset(
            'assets/images/409_156.png',
            package: 'calaurd',
            width: 36.776,
            height: 36.776,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 357.0,
          width: 27.0,
          top: 492.0,
          height: 17.0,
          child: Container(
              width: 27.000,
              height: 17.000,
              child: AutoSizeText(
                'Skip',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  color: Colors.black,
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

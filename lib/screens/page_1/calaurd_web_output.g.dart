import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CalaurdWebOutput extends StatefulWidget {
  const CalaurdWebOutput({Key? key}) : super(key: key);
  @override
  _CalaurdWebOutput createState() => _CalaurdWebOutput();
}

class _CalaurdWebOutput extends State<CalaurdWebOutput> {
  _CalaurdWebOutput();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xff0f0f0f),
      child: Stack(children: [
        Positioned(
          left: MediaQuery.of(context).size.width * 0.052,
          width: MediaQuery.of(context).size.width * 0.048,
          top: MediaQuery.of(context).size.height * 0.028,
          height: MediaQuery.of(context).size.height * 0.046,
          child: Image.asset(
            'assets/images/107_66.png',
            package: 'calaurd',
            width: MediaQuery.of(context).size.width * 0.048,
            height: MediaQuery.of(context).size.height * 0.046,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 435.033,
          width: 70.0,
          top: 58.345,
          height: 19.0,
          child: Container(
              width: 70.000,
              height: 19.000,
              child: AutoSizeText(
                'ABOUT',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 4.16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              )),
        ),
        Positioned(
          left: 90.098,
          width: 713.614,
          top: 406.509,
          height: 513.981,
          child: Image.asset(
            'assets/images/107_75.png',
            package: 'calaurd',
            width: 713.614,
            height: 513.981,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 470.0,
          width: 500.0,
          top: 971.417,
          height: 50.0,
          child: Container(
            width: 500.000,
            height: 50.000,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
          ),
        ),
        Positioned(
          left: 544.267,
          width: 119.0,
          top: 58.345,
          height: 19.0,
          child: Container(
              width: 119.000,
              height: 19.000,
              child: AutoSizeText(
                'DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 4.16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              )),
        ),
        Positioned(
          left: 562.847,
          width: 314.944,
          top: 986.917,
          height: 17.0,
          child: Container(
              width: 314.944,
              height: 17.000,
              child: AutoSizeText(
                'SAVE',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 3.9200000000000004,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              )),
        ),
        Positioned(
          left: 702.5,
          width: 97.0,
          top: 58.345,
          height: 19.0,
          child: Container(
              width: 97.000,
              height: 19.000,
              child: AutoSizeText(
                'CONVERT',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 4.16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              )),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.326,
          width: MediaQuery.of(context).size.width * 0.347,
          top: MediaQuery.of(context).size.height * 0.144,
          height: MediaQuery.of(context).size.height * 0.565,
          child: Image.asset(
            'assets/images/107_71.png',
            package: 'calaurd',
            width: MediaQuery.of(context).size.width * 0.347,
            height: MediaQuery.of(context).size.height * 0.565,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 562.847,
          width: 314.944,
          top: 1044.308,
          height: 17.0,
          child: Container(
              width: 314.944,
              height: 17.000,
              child: AutoSizeText(
                'RETAKE',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 3.9200000000000004,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              )),
        ),
        Positioned(
          left: 838.733,
          width: 93.0,
          top: 58.345,
          height: 19.0,
          child: Container(
              width: 93.000,
              height: 19.000,
              child: AutoSizeText(
                'ANDROID',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 4.16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              )),
        ),
        Positioned(
          left: 970.967,
          width: 34.0,
          top: 58.345,
          height: 19.0,
          child: Container(
              width: 34.000,
              height: 19.000,
              child: AutoSizeText(
                'iOS',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 4.16,
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

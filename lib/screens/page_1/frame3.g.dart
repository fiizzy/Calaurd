import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Frame3 extends StatefulWidget {
  const Frame3({Key? key}) : super(key: key);
  @override
  _Frame3 createState() => _Frame3();
}

class _Frame3 extends State<Frame3> {
  _Frame3();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Stack(children: [
        Positioned(
          left: 205.35,
          width: 73.301,
          top: 200.85,
          height: 73.301,
          child: Image.asset(
            'assets/images/301_180.png',
            package: 'calaurd',
            width: 73.301,
            height: 73.301,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 229.5,
          width: 20.0,
          top: 436.0,
          height: 20.0,
          child: Image.asset(
            'assets/images/301_175.png',
            package: 'calaurd',
            width: 20.000,
            height: 20.000,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 211.44,
          width: 61.049,
          top: 624.666,
          height: 60.952,
          child: Image.asset(
            'assets/images/301_184.png',
            package: 'calaurd',
            width: 61.049,
            height: 60.952,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 67.672,
          width: 348.656,
          top: 760.859,
          height: 1.0,
          child: Container(
            width: 348.656,
            height: 1.000,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          left: 55.0,
          width: 374.0,
          top: 122.214,
          height: 284.582,
          child: Container(
            width: 374.000,
            height: 284.582,
            decoration: BoxDecoration(
              color: Color(0xff0f0f0f),
              borderRadius: BorderRadius.all(Radius.circular(0)),
              border: Border.all(
                color: Color(0xff818181),
                width: 2.0,
              ),
            ),
          ),
        ),
        Positioned(
          left: 146.5,
          width: 191.0,
          top: 309.161,
          height: 19.0,
          child: Container(
              width: 191.000,
              height: 19.000,
              child: AutoSizeText(
                'Upload Image from Gallery',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              )),
        ),
        Positioned(
          left: 67.672,
          width: 118.0,
          top: 732.144,
          height: 19.0,
          child: Container(
              width: 118.000,
              height: 19.000,
              child: AutoSizeText(
                'Enter image URL',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              )),
        ),
        Positioned(
          left: 55.0,
          width: 374.0,
          top: 555.359,
          height: 284.582,
          child: Container(
            width: 374.000,
            height: 284.582,
            decoration: BoxDecoration(
              color: Color(0xff0f0f0f),
              borderRadius: BorderRadius.all(Radius.circular(0)),
              border: Border.all(
                color: Color(0xff818181),
                width: 2.0,
              ),
            ),
          ),
        ),
        Positioned(
          left: 220.0,
          width: 27.0,
          top: 472.8,
          height: 19.0,
          child: Container(
              width: 27.000,
              height: 19.000,
              child: AutoSizeText(
                'OR',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 4.4,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              )),
        ),
        Positioned(
          left: 175.5,
          width: 131.0,
          top: 35.627,
          height: 25.0,
          child: Container(
              width: 131.000,
              height: 25.000,
              child: AutoSizeText(
                'Upload Image',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 21,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
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

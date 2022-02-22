import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AddemailAddress5 extends StatefulWidget {
  const AddemailAddress5({Key? key}) : super(key: key);
  @override
  _AddemailAddress5 createState() => _AddemailAddress5();
}

class _AddemailAddress5 extends State<AddemailAddress5> {
  _AddemailAddress5();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Stack(children: [
        Positioned(
          left: 170.85,
          width: 73.301,
          top: 200.85,
          height: 73.301,
          child: Image.asset(
            'assets/images/18_112.png',
            package: 'calaurd',
            width: 73.301,
            height: 73.301,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 195.0,
          width: 20.0,
          top: 436.0,
          height: 20.0,
          child: Image.asset(
            'assets/images/18_106.png',
            package: 'calaurd',
            width: 20.000,
            height: 20.000,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 176.94,
          width: 61.05,
          top: 563.14,
          height: 60.952,
          child: Image.asset(
            'assets/images/18_124.png',
            package: 'calaurd',
            width: 61.050,
            height: 60.952,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 33.172,
          width: 348.656,
          top: 699.332,
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
          left: 20.5,
          width: 36.776,
          top: 29.739,
          height: 36.776,
          child: Image.asset(
            'assets/images/18_108.png',
            package: 'calaurd',
            width: 36.776,
            height: 36.776,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 112.0,
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
          left: 33.172,
          width: 118.0,
          top: 670.617,
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
          left: 20.5,
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
          left: 20.5,
          width: 374.0,
          top: 493.832,
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
          left: 185.5,
          width: 27.0,
          top: 444.0,
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
          left: 141.0,
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

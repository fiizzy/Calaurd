import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);
  @override
  _LoadingScreen createState() => _LoadingScreen();
}

class _LoadingScreen extends State<LoadingScreen> {
  _LoadingScreen();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Stack(children: [
        Positioned(
          left: 20.5,
          width: 36.776,
          top: 29.739,
          height: 36.776,
          child: Image.asset(
            'assets/images/20_1.png',
            package: 'calaurd',
            width: 36.776,
            height: 36.776,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 20.0,
          width: 374.0,
          top: 115.531,
          height: 579.66,
          child: Image.asset(
            'assets/images/20_6.png',
            package: 'calaurd',
            width: 374.000,
            height: 579.660,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 152.59,
          width: 50.54,
          top: 391.514,
          height: 50.54,
          child: Image.asset(
            'assets/images/20_14.png',
            package: 'calaurd',
            width: 50.540,
            height: 50.540,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 20.5,
          width: 374.0,
          top: 744.208,
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
          left: 167.021,
          width: 78.957,
          top: 825.256,
          height: 17.0,
          child: Container(
              width: 78.957,
              height: 17.000,
              child: AutoSizeText(
                'Replace',
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
          left: 170.0,
          width: 73.0,
          top: 35.627,
          height: 25.0,
          child: Container(
              width: 73.000,
              height: 25.000,
              child: AutoSizeText(
                'Preview',
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
        Positioned(
          left: 133.5,
          width: 131.0,
          top: 759.708,
          height: 19.0,
          child: Container(
              width: 131.000,
              height: 19.000,
              child: AutoSizeText(
                'CALAURIZE!',
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
          left: 0.5,
          width: 411.997,
          top: 0,
          height: 896.0,
          child: Container(
            width: 411.997,
            height: 896.000,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
          ),
        ),
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

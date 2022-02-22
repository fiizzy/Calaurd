import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Calaurd extends StatefulWidget {
  const Calaurd({Key? key}) : super(key: key);
  @override
  _Calaurd createState() => _Calaurd();
}

class _Calaurd extends State<Calaurd> {
  _Calaurd();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xff010101),
      child: Stack(children: [
        Positioned(
          left: 332.344,
          width: 387.0,
          top: 109.765,
          height: 128.0,
          child: Container(
              width: 387.000,
              height: 128.000,
              child: AutoSizeText(
                'Calaurd',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 107,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              )),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.232,
          width: MediaQuery.of(context).size.width * 0.104,
          top: MediaQuery.of(context).size.height * 0.145,
          height: MediaQuery.of(context).size.height * 0.093,
          child: Image.asset(
            'assets/images/404_95.png',
            package: 'calaurd',
            width: MediaQuery.of(context).size.width * 0.104,
            height: MediaQuery.of(context).size.height * 0.093,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 56.697,
          width: 822.855,
          top: 373.581,
          height: 608.188,
          child: Image.asset(
            'assets/images/404_115.png',
            package: 'calaurd',
            width: 822.855,
            height: 608.188,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 398.322,
          width: 144.0,
          top: 373.718,
          height: 24.0,
          child: Container(
              width: 144.000,
              height: 24.000,
              child: AutoSizeText(
                'Out on Playstore',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              )),
        ),
        Positioned(
          left: 273.625,
          width: 389.0,
          top: 240.068,
          height: 26.0,
          child: Container(
              width: 389.000,
              height: 26.000,
              child: AutoSizeText(
                'Bring colours to black and white Images!',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              )),
        ),
        Positioned(
          left: 393.929,
          width: 146.089,
          top: 321.415,
          height: 47.844,
          child: Image.asset(
            'assets/images/404_89.png',
            package: 'calaurd',
            width: 146.089,
            height: 47.844,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 0,
          width: 934.73,
          top: 733.119,
          height: 204.778,
          child: Container(
            width: 934.730,
            height: 204.778,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
          ),
        ),
        Positioned(
          left: 0,
          width: 934.73,
          top: 392.702,
          height: 247.732,
          child: Container(
            width: 934.730,
            height: 247.732,
            decoration: BoxDecoration(
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

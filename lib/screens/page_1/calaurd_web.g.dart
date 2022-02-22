import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CalaurdWeb extends StatefulWidget {
  const CalaurdWeb({Key? key}) : super(key: key);
  @override
  _CalaurdWeb createState() => _CalaurdWeb();
}

class _CalaurdWeb extends State<CalaurdWeb> {
  _CalaurdWeb();

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
            'assets/images/104_60.png',
            package: 'calaurd',
            width: MediaQuery.of(context).size.width * 0.048,
            height: MediaQuery.of(context).size.height * 0.046,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 440.033,
          width: 61.0,
          top: 58.345,
          height: 17.0,
          child: Container(
              width: 61.000,
              height: 17.000,
              child: AutoSizeText(
                'ABOUT',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 3.64,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              )),
        ),
        Positioned(
          left: 112.45,
          width: 713.614,
          top: 184.63,
          height: 513.981,
          child: Image.asset(
            'assets/images/104_73.png',
            package: 'calaurd',
            width: 713.614,
            height: 513.981,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 370.896,
          width: 713.512,
          top: 321.406,
          height: 122.361,
          child: Container(
            width: 713.512,
            height: 122.361,
            decoration: BoxDecoration(
              color: Color(0xff1a1a1a),
              borderRadius: BorderRadius.all(Radius.circular(0)),
              border: Border.all(
                color: Color(0xffbdbdbd),
                width: 2.0,
              ),
            ),
          ),
        ),
        Positioned(
          left: 914.537,
          width: 169.871,
          top: 514.962,
          height: 50.0,
          child: Container(
            width: 169.871,
            height: 50.000,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
          ),
        ),
        Positioned(
          left: 273.996,
          width: 244.847,
          top: 798.807,
          height: 268.852,
          child: Image.asset(
            'assets/images/107_5.png',
            package: 'calaurd',
            width: 244.847,
            height: 268.852,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 551.267,
          width: 105.0,
          top: 58.345,
          height: 17.0,
          child: Container(
              width: 105.000,
              height: 17.000,
              child: AutoSizeText(
                'DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 3.64,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              )),
        ),
        Positioned(
          left: 650.152,
          width: 155.0,
          top: 368.086,
          height: 19.0,
          child: Container(
              width: 155.000,
              height: 19.000,
              child: AutoSizeText(
                'Click to upload Image',
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
          left: 946.081,
          width: 107.0,
          top: 530.462,
          height: 17.0,
          child: Container(
              width: 107.000,
              height: 17.000,
              child: AutoSizeText(
                'CALAURIZE',
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
          left: 708.5,
          width: 85.0,
          top: 58.345,
          height: 17.0,
          child: Container(
              width: 85.000,
              height: 17.000,
              child: AutoSizeText(
                'CONVERT',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 3.64,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              )),
        ),
        Positioned(
          left: 632.353,
          width: 220.0,
          top: 161.099,
          height: 77.0,
          child: Container(
              width: 220.000,
              height: 77.000,
              child: AutoSizeText(
                'Calaurd',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 64,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              )),
        ),
        Positioned(
          left: 843.733,
          width: 82.0,
          top: 58.345,
          height: 17.0,
          child: Container(
              width: 82.000,
              height: 17.000,
              child: AutoSizeText(
                'ANDROID',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 3.64,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              )),
        ),
        Positioned(
          left: 483.353,
          width: 518.0,
          top: 249.205,
          height: 29.0,
          child: Container(
              width: 518.000,
              height: 29.000,
              child: AutoSizeText(
                'Convert Black & White Images to coloured Ones',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              )),
        ),
        Positioned(
          left: 972.967,
          width: 30.0,
          top: 58.345,
          height: 17.0,
          child: Container(
              width: 30.000,
              height: 17.000,
              child: AutoSizeText(
                'iOS',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 3.64,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              )),
        ),
        Positioned(
          left: 629.5,
          width: 181.0,
          top: 719.709,
          height: 29.0,
          child: Container(
              width: 181.000,
              height: 29.000,
              child: AutoSizeText(
                'Test with Images',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              )),
        ),
        Positioned(
          left: 731.353,
          width: 22.0,
          top: 464.864,
          height: 29.0,
          child: Container(
              width: 22.000,
              height: 29.000,
              child: AutoSizeText(
                'or',
                style: TextStyle(
                  fontFamily: 'Aeonik',
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              )),
        ),
        Positioned(
          left: 366.148,
          width: 718.26,
          top: 514.962,
          height: 50.0,
          child: Container(
            width: 718.260,
            height: 50.000,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(0)),
              border: Border.all(
                color: Color(0xffffffff),
                width: 1.0,
              ),
            ),
          ),
        ),
        Positioned(
          left: 747.169,
          width: 146.089,
          top: 615.23,
          height: 48.27,
          child: Image.asset(
            'assets/images/104_109.png',
            package: 'calaurd',
            width: 146.089,
            height: 48.270,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 569.672,
          width: 146.089,
          top: 614.688,
          height: 47.844,
          child: Image.asset(
            'assets/images/104_110.png',
            package: 'calaurd',
            width: 146.089,
            height: 47.844,
            fit: BoxFit.none,
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

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AddemailAddress8 extends StatefulWidget {
  const AddemailAddress8({Key? key}) : super(key: key);
  @override
  _AddemailAddress8 createState() => _AddemailAddress8();
}

class _AddemailAddress8 extends State<AddemailAddress8> {
  _AddemailAddress8();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Stack(children: [
        Positioned(
          left: 175.008,
          width: 55.999,
          top: 34.131,
          height: 74.921,
          child: Image.asset(
            'assets/images/409_198.png',
            package: 'calaurd',
            width: 55.999,
            height: 74.921,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 20.0,
          width: 42.147,
          top: 40.213,
          height: 5.117,
          child: Image.asset(
            'assets/images/409_194.png',
            package: 'calaurd',
            width: 42.147,
            height: 5.117,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 143.904,
          width: 126.191,
          top: 294.004,
          height: 110.417,
          child: Image.asset(
            'assets/images/409_223.png',
            package: 'calaurd',
            width: 126.191,
            height: 110.417,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 0,
          width: 414.0,
          top: 829.053,
          height: 66.947,
          child: Container(
            width: 414.000,
            height: 66.947,
            decoration: BoxDecoration(
              color: Color(0xff282828),
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.121,
          width: MediaQuery.of(context).size.width * 0.055,
          top: MediaQuery.of(context).size.height * 0.951,
          height: MediaQuery.of(context).size.height * 0.028,
          child: Image.asset(
            'assets/images/409_218.png',
            package: 'calaurd',
            width: MediaQuery.of(context).size.width * 0.055,
            height: MediaQuery.of(context).size.height * 0.028,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 333.006,
          width: 25.0,
          top: 852.526,
          height: 25.0,
          child: Image.asset(
            'assets/images/409_220.png',
            package: 'calaurd',
            width: 25.000,
            height: 25.000,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 95.5,
          width: 223.0,
          top: 440.793,
          height: 38.0,
          child: Container(
              width: 223.000,
              height: 38.000,
              child: AutoSizeText(
                'You have no converted images. Click the ‘+’ icon to start!',
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
          left: 121.0,
          width: 171.023,
          top: 34.999,
          height: 40.028,
          child: Stack(children: [
            Positioned(
              left: 0,
              width: 171.0,
              top: 0.001,
              height: 40.0,
              child: Container(
                width: 171.000,
                height: 40.000,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
              ),
            ),
            Positioned(
              left: 0.003,
              width: 45.154,
              top: 0,
              height: 40.028,
              child: Image.asset(
                'assets/images/409_203.png',
                package: 'calaurd',
                width: 45.154,
                height: 40.028,
                fit: BoxFit.none,
              ),
            ),
            Positioned(
              left: 12.613,
              width: 23.72,
              top: 10.968,
              height: 23.218,
              child: Image.asset(
                'assets/images/409_204.png',
                package: 'calaurd',
                width: 23.720,
                height: 23.218,
                fit: BoxFit.none,
              ),
            ),
            Positioned(
              left: 9.081,
              width: 23.72,
              top: 6.084,
              height: 23.218,
              child: Image.asset(
                'assets/images/409_205.png',
                package: 'calaurd',
                width: 23.720,
                height: 23.218,
                fit: BoxFit.none,
              ),
            ),
            Positioned(
              left: 61.817,
              width: 109.206,
              top: 7.974,
              height: 22.557,
              child: Image.asset(
                'assets/images/409_206.png',
                package: 'calaurd',
                width: 109.206,
                height: 22.557,
                fit: BoxFit.none,
              ),
            ),
          ]),
        ),
        Positioned(
          left: 170.2,
          width: 73.599,
          top: 791.533,
          height: 73.599,
          child: Image.asset(
            'assets/images/409_214.png',
            package: 'calaurd',
            width: 73.599,
            height: 73.599,
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

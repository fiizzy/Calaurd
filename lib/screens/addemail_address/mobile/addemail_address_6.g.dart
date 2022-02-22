import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AddemailAddress6 extends StatefulWidget {
  const AddemailAddress6({Key? key}) : super(key: key);
  @override
  _AddemailAddress6 createState() => _AddemailAddress6();
}

class _AddemailAddress6 extends State<AddemailAddress6> {
  _AddemailAddress6();

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
            'assets/images/20_20.png',
            package: 'calaurd',
            width: 36.776,
            height: 36.776,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 20.0,
          width: 176.5,
          top: 748.958,
          height: 50.0,
          child: Container(
            width: 176.500,
            height: 50.000,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
          ),
        ),
        Positioned(
          left: 221.414,
          width: 172.586,
          top: 748.958,
          height: 50.0,
          child: Container(
            width: 172.586,
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
          left: 181.0,
          width: 52.0,
          top: 832.851,
          height: 17.0,
          child: Container(
              width: 52.000,
              height: 17.000,
              child: AutoSizeText(
                'HOME',
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
          left: 81.75,
          width: 53.0,
          top: 764.458,
          height: 19.0,
          child: Container(
              width: 53.000,
              height: 19.000,
              child: AutoSizeText(
                'SAVE',
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
          left: 243.659,
          width: 124.0,
          top: 764.458,
          height: 19.0,
          child: Container(
              width: 124.000,
              height: 19.000,
              child: AutoSizeText(
                'START NEW',
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
          left: 21.663,
          width: 374.0,
          top: 116.065,
          height: 581.0,
          child: Image.asset(
            'assets/images/23_55.png',
            package: 'calaurd',
            width: 374.000,
            height: 581.000,
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

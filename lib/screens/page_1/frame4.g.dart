import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Frame4 extends StatefulWidget {
  const Frame4({Key? key}) : super(key: key);
  @override
  _Frame4 createState() => _Frame4();
}

class _Frame4 extends State<Frame4> {
  _Frame4();

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
            'assets/images/301_206.png',
            package: 'calaurd',
            width: 36.776,
            height: 36.776,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 41.663,
          width: 420.792,
          top: 117.828,
          height: 695.237,
          child: Image.asset(
            'assets/images/301_211.png',
            package: 'calaurd',
            width: 420.792,
            height: 695.237,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 59.473,
          width: 374.0,
          top: 857.738,
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
          left: 205.994,
          width: 78.957,
          top: 938.785,
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
          left: 214.056,
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
          left: 172.473,
          width: 131.0,
          top: 873.238,
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
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

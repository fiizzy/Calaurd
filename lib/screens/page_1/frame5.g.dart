import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Frame5 extends StatefulWidget {
  const Frame5({Key? key}) : super(key: key);
  @override
  _Frame5 createState() => _Frame5();
}

class _Frame5 extends State<Frame5> {
  _Frame5();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Stack(children: [
        Positioned(
          left: MediaQuery.of(context).size.width * 0.809,
          width: MediaQuery.of(context).size.width * 0.249,
          top: 0,
          height: MediaQuery.of(context).size.height * 0.455,
          child: Image.asset(
            'assets/images/302_102.png',
            package: 'calaurd',
            width: MediaQuery.of(context).size.width * 0.249,
            height: MediaQuery.of(context).size.height * 0.455,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.011,
          width: MediaQuery.of(context).size.width * 0.56,
          top: MediaQuery.of(context).size.height * 0.086,
          height: MediaQuery.of(context).size.height * 0.825,
          child: Image.asset(
            'assets/images/302_91.png',
            package: 'calaurd',
            width: MediaQuery.of(context).size.width * 0.560,
            height: MediaQuery.of(context).size.height * 0.825,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.048,
          width: MediaQuery.of(context).size.width * 0.404,
          top: MediaQuery.of(context).size.height * 0.155,
          height: MediaQuery.of(context).size.height * 0.737,
          child: Image.asset(
            'assets/images/302_96.png',
            package: 'calaurd',
            width: MediaQuery.of(context).size.width * 0.404,
            height: MediaQuery.of(context).size.height * 0.737,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 116.778,
          width: 790.443,
          top: 190.253,
          height: 136.0,
          child: Container(
              width: 790.443,
              height: 136.000,
              child: AutoSizeText(
                'AI Powered Black and White Picture Colorizer',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
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

import 'package:flutter/material.dart';

class Frame2 extends StatefulWidget {
  const Frame2({Key? key}) : super(key: key);
  @override
  _Frame2 createState() => _Frame2();
}

class _Frame2 extends State<Frame2> {
  _Frame2();

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
            'assets/images/301_119.png',
            package: 'calaurd',
            width: 55.999,
            height: 74.921,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 372.615,
          width: 322.153,
          top: 133.138,
          height: 635.989,
          child: Image.asset(
            'assets/images/301_116.png',
            package: 'calaurd',
            width: 322.153,
            height: 635.989,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 20.0,
          width: 322.727,
          top: 161.303,
          height: 579.66,
          child: Image.asset(
            'assets/images/301_113.png',
            package: 'calaurd',
            width: 322.727,
            height: 579.660,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.214,
          width: MediaQuery.of(context).size.width * 0.045,
          top: MediaQuery.of(context).size.height * 0.959,
          height: MediaQuery.of(context).size.height * 0.024,
          child: Image.asset(
            'assets/images/301_139.png',
            package: 'calaurd',
            width: MediaQuery.of(context).size.width * 0.045,
            height: MediaQuery.of(context).size.height * 0.024,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 373.04,
          width: 25.0,
          top: 982.292,
          height: 25.0,
          child: Image.asset(
            'assets/images/301_141.png',
            package: 'calaurd',
            width: 25.000,
            height: 25.000,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 0,
          width: 498.146,
          top: 958.818,
          height: 66.947,
          child: Container(
            width: 498.146,
            height: 66.947,
            decoration: BoxDecoration(
              color: Color(0xff282828),
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
          ),
        ),
        Positioned(
          left: 164.5,
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
                'assets/images/301_124.png',
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
                'assets/images/301_125.png',
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
                'assets/images/301_126.png',
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
                'assets/images/301_127.png',
                package: 'calaurd',
                width: 109.206,
                height: 22.557,
                fit: BoxFit.none,
              ),
            ),
          ]),
        ),
        Positioned(
          left: 210.234,
          width: 73.599,
          top: 921.299,
          height: 73.599,
          child: Image.asset(
            'assets/images/301_135.png',
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

import 'package:flutter/material.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);
  @override
  _SplashScreen1 createState() => _SplashScreen1();
}

class _SplashScreen1 extends State<SplashScreen1> {
  _SplashScreen1();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xff050505),
      child: Stack(children: [
        Positioned(
          left: MediaQuery.of(context).size.width * 0.378,
          width: MediaQuery.of(context).size.width * 0.245,
          top: MediaQuery.of(context).size.height * 0.422,
          height: MediaQuery.of(context).size.height * 0.101,
          child: Image.asset(
            'assets/images/409_93.png',
            package: 'calaurd',
            width: MediaQuery.of(context).size.width * 0.245,
            height: MediaQuery.of(context).size.height * 0.101,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.354,
          width: MediaQuery.of(context).size.width * 0.292,
          top: MediaQuery.of(context).size.height * 0.55,
          height: MediaQuery.of(context).size.height * 0.028,
          child: Image.asset(
            'assets/images/409_97.png',
            package: 'calaurd',
            width: MediaQuery.of(context).size.width * 0.292,
            height: MediaQuery.of(context).size.height * 0.028,
            fit: BoxFit.fill,
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

import 'package:flutter/material.dart';

class Frame1 extends StatefulWidget {
  const Frame1({Key? key}) : super(key: key);
  @override
  _Frame1 createState() => _Frame1();
}

class _Frame1 extends State<Frame1> {
  _Frame1();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Stack(children: [
        Positioned(
          left: 190.0,
          width: 1140.0,
          top: 266.0,
          height: 1147.0,
          child: Image.asset(
            'assets/images/1_2.png',
            package: 'calaurd',
            width: 1140.000,
            height: 1147.000,
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

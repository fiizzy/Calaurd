import 'package:flutter/material.dart';

class Icon extends StatefulWidget {
  const Icon({Key? key}) : super(key: key);
  @override
  _Icon createState() => _Icon();
}

class _Icon extends State<Icon> {
  _Icon();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Stack(children: [
        Positioned(
          left: MediaQuery.of(context).size.width * 0.096,
          width: MediaQuery.of(context).size.width * 0.808,
          top: MediaQuery.of(context).size.height * 0.14,
          height: MediaQuery.of(context).size.height * 0.72,
          child: Image.asset(
            'assets/images/301_92.png',
            package: 'calaurd',
            width: MediaQuery.of(context).size.width * 0.808,
            height: MediaQuery.of(context).size.height * 0.720,
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

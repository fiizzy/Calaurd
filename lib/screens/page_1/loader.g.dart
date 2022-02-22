import 'package:flutter/material.dart';

class Loader extends StatefulWidget {
  const Loader({Key? key}) : super(key: key);
  @override
  _Loader createState() => _Loader();
}

class _Loader extends State<Loader> {
  _Loader();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xff0f0f0f),
      child: Stack(children: [
        Positioned(
          left: MediaQuery.of(context).size.width * 0.063,
          width: MediaQuery.of(context).size.width * 0.496,
          top: MediaQuery.of(context).size.height * 0.306,
          height: MediaQuery.of(context).size.height * 0.387,
          child: Image.asset(
            'assets/images/107_72.png',
            package: 'calaurd',
            width: MediaQuery.of(context).size.width * 0.496,
            height: MediaQuery.of(context).size.height * 0.387,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.415,
          width: MediaQuery.of(context).size.width * 0.169,
          top: MediaQuery.of(context).size.height * 0.418,
          height: MediaQuery.of(context).size.height * 0.163,
          child: Image.asset(
            'assets/images/107_46.png',
            package: 'calaurd',
            width: MediaQuery.of(context).size.width * 0.169,
            height: MediaQuery.of(context).size.height * 0.163,
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

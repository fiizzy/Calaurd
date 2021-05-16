import 'package:calaurd/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import '../widgets/preloader.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyStyles.backgroundColour,
      appBar: AppBar(
        centerTitle: true,
        leading: Container(
          child: Icon(Icons.menu),
        ),
        backgroundColor: MyStyles.backgroundColour,
        elevation: 0,
        shadowColor: MyStyles.backgroundColour,
        title: Container(
          child: WebsafeSvg.asset('svg/horizontal_logo.svg'),
        ),
      ),
      body: Center(
        child: Preloader(),
      ),
    );
  }
}

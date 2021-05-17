import 'package:calaurd/styles/styles.dart';
import 'package:calaurd/views/home/bottomNavbar.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import '../widgets/preloader.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  void changeCurrentIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

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
        body: Stack(
          // alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: PageView(
                onPageChanged: (index) {
                  changeCurrentIndex(index);
                },
                controller: PageController(
                  viewportFraction: .7,
                ),
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(5, 20, 5, 50),
                      width: MyStyles.deviceWidth(context),
                      // height: MyStyles.deviceHieight(context),
                      height: MyStyles.deviceHieight(context) * .7,
                      child: Image.asset(
                        'images/onboardingTwo.png',
                        fit: currentIndex == 1 ? BoxFit.fitWidth : BoxFit.cover,
                      )),
                  Container(
                      padding: EdgeInsets.fromLTRB(5, 20, 5, 50),
                      width: MyStyles.deviceWidth(context),
                      height: MyStyles.deviceHieight(context),
                      child: Image.asset(
                        'images/onboardingThree.jpg',
                        height: MyStyles.deviceHieight(context) * .7,
                        fit: currentIndex == 0 ? BoxFit.fitWidth : BoxFit.cover,
                      )),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: BottomNavbar(),
            ),
          ],
        ));
  }
}

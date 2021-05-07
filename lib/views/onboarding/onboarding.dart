import 'package:calaurd/styles/styles.dart';
import 'package:calaurd/views/onboarding/indicatorWidget.dart';
import 'package:calaurd/views/onboarding/onboardingWidgets.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          PageView(
            scrollDirection: Axis.vertical,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            children: [
              OnboardingOne(),
              OnboardingOne(),
              OnboardingOne(),
            ],
          ),
          Positioned(
              top: MyStyles.deviceHieight(context) * .25,
              right: MyStyles.deviceWidth(context) * .1,
              child: IndicatorsWidget(
                currentIndex: currentIndex,
              )),
        ],
      ),
    );
  }
}

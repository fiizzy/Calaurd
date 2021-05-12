import 'package:calaurd/styles/styles.dart';
import 'package:calaurd/views/home/enterEmail.dart';
import 'package:calaurd/views/home/home.dart';
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
      resizeToAvoidBottomInset: true,
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
            children: [OnboardingOne(), OnboardingTwo(), OnboardingThree()],
          ),
          Positioned(
              top: MyStyles.deviceHieight(context) * .25,
              right: MyStyles.deviceWidth(context) * .1,
              child: IndicatorsWidget(
                currentIndex: currentIndex,
              )),
          MyStyles.verticalSpaceZero,
          Positioned(
            bottom: MyStyles.deviceHieight(context) * .04,
            child: Container(
              width: MyStyles.buttonWidth(context),
              height: MyStyles.buttonHeight,
              decoration: BoxDecoration(gradient: MyStyles.gradient),
              // color: MyStyles.primaryGreen,
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
                onPressed: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => EnterEmail());
                  // Navigator.pushNamed(context, '/home');
                },
                child: Container(
                  height: MyStyles.buttonHeight,
                  decoration: BoxDecoration(gradient: MyStyles.gradient),
                  child: Center(
                    child: Text(
                      "GET STARTED",
                      style: MyStyles.buttonText,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:calaurd/styles/styles.dart';
import 'package:calaurd/views/home/home.dart';
import 'package:calaurd/views/onboarding/indicatorWidget.dart';
import 'package:calaurd/views/onboarding/onboardingWidgets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;

  Future setSharedpref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
  }

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
            children: [
              OnboardingWidget(
                assetPath: 'images/onboardingOne.png',
                desc: 'First, it was Black and White',
              ),
              OnboardingWidget(
                assetPath: 'images/onboardingTwo.png',
                desc: 'then came Calaurd',
              ),
              OnboardingWidget(
                assetPath: 'images/onboardingThree.jpg',
                desc: '...and all was Coloured',
              ),
            ],
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
                onPressed: () async {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => Home(),
                    ),
                  );

                  await setSharedpref();
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

  // void dispose() {
  //   // Never called
  //   print("Disposing first route");
  //   super.dispose();
  // }
}

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

  String pathChange() {
    switch (currentIndex) {
      case 0:
        {
          return 'images/onboardingOne.png';
        }
      case 1:
        {
          return 'images/onboardingTwo.png';
        }
      case 2:
        {
          return 'images/onboardingOne.png';
        }

      default:
        return 'Something went Wrong';
    }
  }

  String descriptionChange() {
    switch (currentIndex) {
      case 0:
        {
          return 'First, it was Black and White';
        }
      case 1:
        {
          return 'then came Calaurd,';
        }
      case 2:
        {
          return '...and all was Coloured';
        }

      default:
        return 'Something went Wrong';
    }
  }

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
              OnboardingOne(
                imagePath: pathChange(),
                description: descriptionChange(),
              ),
              OnboardingOne(
                imagePath: pathChange(),
                description: descriptionChange(),
              ),
              OnboardingOne(
                imagePath: pathChange(),
                description: descriptionChange(),
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
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return MyStyles.gradientGreen;
                      return MyStyles
                          .gradientGreen; // Use the component's default.
                    },
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  "GET STARTED",
                  style: MyStyles.buttonText,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

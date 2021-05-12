import 'package:calaurd/styles/styles.dart';
import 'package:flutter/material.dart';

class OnboardingOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
              width: MyStyles.deviceWidth(context),
              height: MyStyles.deviceHieight(context),
              child: Image.asset(
                'images/onboardingOne.png',
                fit: BoxFit.cover,
              )),
          Container(
            color: Color.fromRGBO(0, 0, 0, .6),
            height: MyStyles.deviceHieight(context),
          ),
          Wrap(
            children: [
              Text(
                'First, it was Black and White',
                style: MyStyles.headerOne,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class OnboardingTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
              width: MyStyles.deviceWidth(context),
              height: MyStyles.deviceHieight(context),
              child: Image.asset(
                'images/onboardingTwo.png',
                fit: BoxFit.cover,
              )),
          Container(
            color: Color.fromRGBO(0, 0, 0, .6),
            height: MyStyles.deviceHieight(context),
          ),
          Wrap(
            children: [
              Text(
                'then came Calaurd',
                style: MyStyles.headerOne,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class OnboardingThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
              width: MyStyles.deviceWidth(context),
              height: MyStyles.deviceHieight(context),
              child: Image.asset(
                'images/onboardingThree.jpg',
                fit: BoxFit.cover,
              )),
          Container(
            color: Color.fromRGBO(0, 0, 0, .3),
            height: MyStyles.deviceHieight(context),
          ),
          Wrap(
            children: [
              Text(
                '...and all was Coloured',
                style: MyStyles.headerOne,
              ),
            ],
          )
        ],
      ),
    );
  }
}

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
              child: Image.asset(
                'images/onboardingOne.png',
                fit: BoxFit.fitWidth,
              )),
          Container(
            color: Color.fromRGBO(0, 0, 0, .6),
            height: MyStyles.deviceHieight(context),
          )
        ],
      ),
    );
  }
}

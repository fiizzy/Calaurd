import 'package:calaurd/styles/styles.dart';
import 'package:flutter/material.dart';

class OnboardingOne extends StatelessWidget {
  final String imagePath;
  final String description;

  OnboardingOne({required this.imagePath, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
              width: MyStyles.deviceWidth(context),
              child: Image.asset(
                imagePath,
                fit: BoxFit.fitWidth,
              )),
          Container(
            color: Color.fromRGBO(0, 0, 0, .6),
            height: MyStyles.deviceHieight(context),
          ),
          Wrap(
            children: [
              Text(
                description,
                style: MyStyles.headerOne,
              ),
            ],
          )
        ],
      ),
    );
  }
}

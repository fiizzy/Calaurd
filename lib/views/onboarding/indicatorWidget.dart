import 'package:calaurd/views/onboarding/indicator.dart';
import 'package:flutter/material.dart';

class IndicatorsWidget extends StatelessWidget {
  final int currentIndex;
  IndicatorsWidget({required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Indicator(
            positionIndex: 0,
            currentIndex: currentIndex,
          ),
          SizedBox(
            height: 10,
          ),
          Indicator(
            positionIndex: 1,
            currentIndex: currentIndex,
          ),
          SizedBox(
            height: 10,
          ),
          Indicator(
            positionIndex: 2,
            currentIndex: currentIndex,
          ),
          SizedBox(
            height: 10,
          ),
        ]));
  }
}

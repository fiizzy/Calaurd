import 'package:calaurd/styles/styles.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int positionIndex, currentIndex;

  Indicator({required this.positionIndex, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: positionIndex == currentIndex ? 40 : 6,
        width: positionIndex == currentIndex ? 10 : 6,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: positionIndex == currentIndex
                ? MyStyles.primaryGreen
                : MyStyles.white));
  }
}

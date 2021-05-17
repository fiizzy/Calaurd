import 'package:calaurd/styles/styles.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 60,
          width: MyStyles.deviceWidth(context),
          color: MyStyles.primaryGrey,
        ),
        Positioned(
          top: -20,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                gradient: MyStyles.gradient,
                borderRadius: MyStyles.myBorderRadius),
          ),
        )
      ],
    );
  }
}

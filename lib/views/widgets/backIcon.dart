import 'package:calaurd/styles/styles.dart';
import 'package:flutter/material.dart';

Widget backIcon({context, iconWidget}) {
  return Material(
    color: Colors.transparent,
    shape: CircleBorder(),
    clipBehavior: Clip.hardEdge,
    child: InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        child: Center(
          child: iconWidget,
        ),
        height: 60,
        width: 60,
      ),
    ),
  );
}

Widget customIcon({context, iconWidget, routeName}) {
  return Material(
    shape: CircleBorder(),
    clipBehavior: Clip.hardEdge,
    child: InkWell(
      splashColor: Colors.red,
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        child: Center(
          child: iconWidget,
        ),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            gradient: MyStyles.gradient, borderRadius: MyStyles.myBorderRadius),
      ),
    ),
  );
}

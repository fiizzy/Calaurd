import 'package:calaurd/styles/styles.dart';
import 'package:flutter/material.dart';

Widget saveAndRetake(BuildContext context) {
  return Row(
    children: [
      Container(
        width: MyStyles.buttonWidth(context),
        height: MyStyles.buttonHeight,
        decoration: BoxDecoration(gradient: MyStyles.gradient),
        child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
            ),
            onPressed: () {},
            child: Container(
              height: MyStyles.buttonHeight,
              decoration: BoxDecoration(gradient: MyStyles.gradient),
              child: Center(
                child: Text(
                  "SAVE",
                  style: MyStyles.buttonText,
                ),
              ),
            )),
      ),
      MyStyles.horizontalSpaceOne,
      Icon(
        Icons.refresh,
        color: MyStyles.white,
        size: 40,
      )
    ],
  );
}

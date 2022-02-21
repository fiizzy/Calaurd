import 'package:calaurd/styles/styles.dart';
import 'package:flutter/material.dart';

class OnboardingWidget extends StatelessWidget {
  final String assetPath;
  final String desc;

  const OnboardingWidget(
      {Key? key, required this.assetPath, required this.desc})
      : super(key: key);

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
                assetPath,
                fit: BoxFit.cover,
              )),
          Container(
            color: Color.fromRGBO(0, 0, 0, .6),
            height: MyStyles.deviceHieight(context),
          ),
          Wrap(
            children: [
              Text(
                desc,
                style: MyStyles.headerOne,
              ),
            ],
          )
        ],
      ),
    );
  }
}

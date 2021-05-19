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
          child: Row(
            children: [
              Container(
                height: 60,
                width: MyStyles.deviceWidth(context) * .5,
                child: Center(
                  child: Material(
                    shape: CircleBorder(),
                    color: Color.fromRGBO(0, 0, 0, 0),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          height: 60, width: 60, child: Icon(Icons.home)),
                    ),
                  ),
                ),
              ),
              Container(
                height: 60,
                width: MyStyles.deviceWidth(context) * .5,
                child: Center(
                  child: Material(
                    shape: CircleBorder(),
                    color: Color.fromRGBO(0, 0, 0, 0),
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/uploadImage');
                      },
                      child: Container(
                          height: 60, width: 60, child: Icon(Icons.image)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -20,
          child: Material(
            shape: CircleBorder(),
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: Colors.red,
              onTap: () {
                Navigator.pushNamed(context, '/uploadImage');
              },
              child: Container(
                child: Center(
                  child: Icon(Icons.add),
                ),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    gradient: MyStyles.gradient,
                    borderRadius: MyStyles.myBorderRadius),
              ),
            ),
          ),
        )
      ],
    );
  }
}

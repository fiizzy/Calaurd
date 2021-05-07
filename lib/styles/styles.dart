import 'package:flutter/material.dart';

class MyStyles {
  //Queries
  static double deviceHieight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double deviceWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  //All Application Colours
  static Color white = Color(0xffFFFFFF);
  static Color gradientBlue = Color(0xff1C4EA6);
  static Color primaryGreen = Color(0xff0CC393);
}

class AppTheme {
  AppTheme._();

  //Colors for theme
  static Color primaryBlue = MyStyles.gradientBlue;

  //Internal Flutter theme swatches and colours
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Aeonik-Regular',

    //This wierdly controls the Border Color
    hintColor: MyStyles.gradientBlue,

    buttonTheme: ButtonThemeData(
      buttonColor: primaryBlue,
    ),
    appBarTheme: AppBarTheme(),
    // primarySwatch: primaryBlue,
    primaryColor: primaryBlue,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    textTheme: TextTheme(),
  );
}

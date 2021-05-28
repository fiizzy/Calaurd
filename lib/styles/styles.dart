import 'package:flutter/material.dart';

class MyStyles {
  //Queries
  static double deviceHieight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double deviceWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double buttonWidth(BuildContext context) =>
      MediaQuery.of(context).size.width * .8;

  static double buttonHeight = 55;

  //All Application Colours
  static Color white = Color(0xffFFFFFF);
  static Color gradientPurple = Color(0xff774499);
  static Color gradientGreen = Color(0xff00E4AE);
  static Color primaryGreen = Color(0xff0CC393);
  static Color backgroundColour = Colors.black;
  static Color primaryGrey = Color(0xff282828);
  static Color darkGrey = Color(0xff0F0F0F);

  //Headers
  static TextStyle headerOne = TextStyle(
    fontSize: 26,
    fontFamily: 'Aeonik-Regular',
    color: white,
  );
  static TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontFamily: 'Aeonik-Regular',
    color: white,
  );
  static TextStyle bodyText = TextStyle(
    fontSize: 16,
    fontFamily: 'Aeonik-Regular',
    color: Colors.black,
  );
  static TextStyle bodyTextWhite = TextStyle(
    fontSize: 18,
    fontFamily: 'Aeonik-Regular',
    color: white,
  );

  //All Gradient Widgets
  static Gradient gradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryGreen, gradientPurple],
  );

  // Spacing
  static SizedBox verticalSpaceZero = SizedBox(
    height: 10,
  );
  static SizedBox horizontalSpaceZero = SizedBox(
    width: 10,
  );
  static SizedBox verticalSpaceOne = SizedBox(
    height: 20,
  );
  static SizedBox verticalSpaceTwo = SizedBox(
    height: 30,
  );
  static SizedBox horizontalSpaceOne = SizedBox(
    width: 20,
  );
  static SizedBox horizontalSpaceTwo = SizedBox(
    width: 30,
  );

  //Border Radius
  static BorderRadius myBorderRadius = BorderRadius.circular(500);
}

class AppTheme {
  AppTheme._();

  //Colors for theme
  static Color primaryBlue = MyStyles.gradientPurple;

  //Internal Flutter theme swatches and colours
  static ThemeData lightTheme = ThemeData(
    primaryColorLight: primaryBlue,
    fontFamily: 'Aeonik-Regular',

    //This wierdly controls the Border Color
    hintColor: MyStyles.gradientPurple,

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

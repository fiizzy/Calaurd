import 'package:flutter/material.dart';
import './mobile/splash_screen_1.g.dart';
import '../../widgets/responsive_orientation_builder.dart';
import '../../widgets/responsive_layout_builder.dart';

class SplashScreenPlatformBuilder extends StatelessWidget {
  const SplashScreenPlatformBuilder({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayoutBuilder(
      mobileWidget: ResponsiveOrientationBuilder(
        verticalPage: SplashScreenVertical(),
        horizontalPage: SplashScreenHorizontal(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './mobile/onboarding_screen_7.g.dart';
import '../../widgets/responsive_orientation_builder.dart';
import '../../widgets/responsive_layout_builder.dart';

class OnboardingScreenPlatformBuilder extends StatelessWidget {
  const OnboardingScreenPlatformBuilder({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayoutBuilder(
      mobileWidget: ResponsiveOrientationBuilder(
        verticalPage: OnboardingScreenVertical(),
        horizontalPage: OnboardingScreenHorizontal(),
      ),
    );
  }
}

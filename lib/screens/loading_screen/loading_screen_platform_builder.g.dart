import 'package:flutter/material.dart';
import './mobile/loading_screen_1.g.dart';
import '../../widgets/responsive_orientation_builder.dart';
import '../../widgets/responsive_layout_builder.dart';

class LoadingScreenPlatformBuilder extends StatelessWidget {
  const LoadingScreenPlatformBuilder({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayoutBuilder(
      mobileWidget: ResponsiveOrientationBuilder(
        verticalPage: LoadingScreenVertical(),
        horizontalPage: LoadingScreenHorizontal(),
      ),
    );
  }
}

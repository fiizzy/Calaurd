import 'package:flutter/material.dart';

class ResponsiveOrientationBuilder extends StatelessWidget {
  final Widget? verticalPage;
  final Widget? horizontalPage;

  const ResponsiveOrientationBuilder({
    this.verticalPage,
    this.horizontalPage,
  });

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      switch (orientation) {
        case Orientation.portrait:
          return verticalPage!;
          break;
        case Orientation.landscape:
          return horizontalPage!;
        default:
          return ErrorScreen();
      }
    });
  }
}

class ErrorScreen extends StatelessWidget {
  // TODO: Change this screen to match your project
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text('Something went wrong!'),
      ),
    );
  }
}

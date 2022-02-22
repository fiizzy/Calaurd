import 'package:flutter/material.dart';
import './mobile/addemail_address_13.g.dart';
import '../../widgets/responsive_orientation_builder.dart';
import '../../widgets/responsive_layout_builder.dart';

class AddemailAddressPlatformBuilder extends StatelessWidget {
  const AddemailAddressPlatformBuilder({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayoutBuilder(
      mobileWidget: ResponsiveOrientationBuilder(
        verticalPage: AddemailAddressVertical(),
        horizontalPage: AddemailAddressHorizontal(),
      ),
    );
  }
}

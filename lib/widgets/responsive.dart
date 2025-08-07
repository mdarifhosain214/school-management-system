import 'package:flutter/material.dart';

import '../utils/dimension.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const Responsive(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});
 

  @override
  Widget build(BuildContext context) {
    if (Dimensions. isMobile(context)) {
      return mobile;
    } else if (Dimensions. isTablet(context)) {
      return tablet;
    } else {
      return desktop;
    }
  }
}

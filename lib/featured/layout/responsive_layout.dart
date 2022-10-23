import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobileDevice,
      required this.desktopDevice,
      required this.tabletDevice,
      required this.landscapeDevice});
  final Widget mobileDevice;
  final Widget desktopDevice;
  final Widget tabletDevice;
  final Widget landscapeDevice;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid || Platform.isIOS || Platform.isFuchsia) {
      return OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return mobileDevice;
          } else {
            return landscapeDevice;
          }
        },
      );
    } else {
      return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 480) {
            return mobileDevice;
          } else if (constraints.maxWidth > 480 && constraints.maxWidth < 760) {
            return tabletDevice;
          } else {
            return desktopDevice;
          }
        },
      );
    }
  }
}

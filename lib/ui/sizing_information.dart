import 'package:flutter/material.dart';
import 'package:screen_responsive_exam/enums/device_screen_types.dart';

class SizingInformation {
  final Orientation? orientation;
  final DeviceScreenType? deviceScreenType;
  final Size? screenSize;
  final Size? localWidgetsize;

  SizingInformation({
    this.orientation,
    this.deviceScreenType,
    this.screenSize,
    this.localWidgetsize,
  });
@override
  String toString() {
    return 'Orientation: $orientation, deviceScreenTypes: $deviceScreenType, screenSize: $screenSize, localWidgetsize: $localWidgetsize)';
  }
  
}

import 'package:flutter/material.dart';
import 'package:screen_responsive_exam/ui/sizing_information.dart';
import 'package:screen_responsive_exam/ui/utils/ui_utils.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(BuildContext context, SizingInformation sizingInformation) builder;
  const BaseWidget({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
   
    return LayoutBuilder(builder: (context, boxConstraints) {
       var sizingInformation = SizingInformation(
      orientation: mediaQuery.orientation,
      deviceScreenType: getDeviceType(mediaQuery),
      screenSize: mediaQuery.size,
      localWidgetsize: Size(boxConstraints.maxWidth,boxConstraints.maxHeight)
    );
      return builder(context, sizingInformation);
    });
  }
}
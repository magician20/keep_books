import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


/// Flutter 2.5
/// ScrollBehaviors now allow or disallow drag scrolling from specified PointerDeviceKinds. 
/// ScrollBehavior.dragDevices, by default, allows scrolling widgets to be dragged 
/// by all PointerDeviceKinds except for PointerDeviceKind.mouse.
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
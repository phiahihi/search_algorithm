import 'dart:ui';

Future wait({double speed = 0.5}) {
  final milliseconds = lerpDouble(100, 2000, speed)!.toInt();
  return Future.delayed(Duration(milliseconds: milliseconds));
}

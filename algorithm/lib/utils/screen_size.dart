enum DeviceScreenType { mobile, tablet, desktop }

DeviceScreenType deviceScreenType(double width) {
  if (width > 950) {
    return DeviceScreenType.desktop;
  }
  if (width > 600) {
    return DeviceScreenType.tablet;
  }
  return DeviceScreenType.mobile;
}

// class SizingInformation {
//   // final Orientation orientation;
//   final DeviceScreenType deviceType;
//   final Size screenSize;
//   // final Size localWidgetSize;

//   SizingInformation({
//     // this.orientation,
//     this.deviceType,
//     this.screenSize,
//     // this.localWidgetSize,
//   });
// }

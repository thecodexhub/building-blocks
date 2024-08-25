import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:responsive_layout/responsive_layout.dart';

extension ResponsiveWidgetTester on WidgetTester {
  void setDisplaySize(Size size) {
    view
      ..physicalSize = size
      ..devicePixelRatio = 1.0;
    addTearDown(() {
      view
        ..resetPhysicalSize()
        ..resetDevicePixelRatio();
    });
  }

  void setLargeDisplaySize() {
    setDisplaySize(const Size(AppBreakpoints.large, 1000));
  }

  void setMediumDisplaySize() {
    setDisplaySize(const Size(AppBreakpoints.medium, 1000));
  }

  void setSmallDisplaySize() {
    setDisplaySize(const Size(AppBreakpoints.small, 1000));
  }
}

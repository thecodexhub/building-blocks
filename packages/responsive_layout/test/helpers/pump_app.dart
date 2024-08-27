import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp({required Widget widget}) {
    return pumpWidget(
      MaterialApp(
        localizationsDelegates: const [],
        home: widget,
      ),
    );
  }
}

import 'package:building_blocks/home/home.dart';
import 'package:flutter/material.dart';

/// {@template app}
/// Entrypoint of the application.
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app}
  const App({super.key});

  // A one-line description used by the device to identify the app for the user.
  static const _applicationTitle = 'Building Blocks';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _applicationTitle,
      theme: Theme.of(context).copyWith(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              backgroundColor: Colors.white,
            ),
      ),
      home: const HomePage(),
    );
  }
}

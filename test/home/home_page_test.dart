// ignore_for_file: prefer_const_constructors

import 'package:building_blocks/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/helpers.dart';

void main() {
  group('HomePage', () {
    testWidgets('renders on a large layout', (tester) async {
      tester.setLargeDisplaySize();
      await tester.pumpApp(widget: HomePage());
      expect(find.byType(HomePageLargeLayout), findsOneWidget);
    });

    testWidgets('renders on a medium layout', (tester) async {
      tester.setMediumDisplaySize();
      await tester.pumpApp(widget: HomePage());
      expect(find.byType(HomePageMediumLayout), findsOneWidget);
    });

    testWidgets('renders on a small layout', (tester) async {
      tester.setSmallDisplaySize();
      await tester.pumpApp(widget: HomePage());
      expect(find.byType(HomePageSmallLayout), findsOneWidget);
    });

    testWidgets(
      'has a menu icon on medium screen that opens drawer',
      (tester) async {
        tester.setMediumDisplaySize();
        await tester.pumpApp(widget: HomePage());

        final finder = find.byType(IconButton);
        expect(finder, findsOneWidget);

        await tester.tap(finder);
        await tester.pumpAndSettle();

        expect(find.byType(NavigationItem), findsWidgets);
      },
    );
  });

  group('NavigationDrawerWidget', () {
    testWidgets('renders a dashboard [ListTile]', (tester) async {
      final key = Key('navigation_item_dashboard');
      await tester.pumpApp(
        widget: Scaffold(
          body: NavigationDrawerWidget(),
        ),
      );

      final finder = find.byWidgetPredicate(
        (widget) => widget is NavigationItem && widget.key == key,
      );
      expect(finder, findsOneWidget);

      await tester.tap(finder);
    });

    testWidgets('renders a teams [ListTile]', (tester) async {
      final key = Key('navigation_item_teams');
      await tester.pumpApp(
        widget: Scaffold(
          body: NavigationDrawerWidget(),
        ),
      );

      final finder = find.byWidgetPredicate(
        (widget) => widget is NavigationItem && widget.key == key,
      );
      expect(finder, findsOneWidget);

      await tester.tap(finder);
    });

    testWidgets('renders a projects [ListTile]', (tester) async {
      final key = Key('navigation_item_projects');
      await tester.pumpApp(
        widget: Scaffold(
          body: NavigationDrawerWidget(),
        ),
      );

      final finder = find.byWidgetPredicate(
        (widget) => widget is NavigationItem && widget.key == key,
      );
      expect(finder, findsOneWidget);

      await tester.tap(finder);
    });

    testWidgets('renders a calendar [ListTile]', (tester) async {
      final key = Key('navigation_item_calendar');
      await tester.pumpApp(
        widget: Scaffold(
          body: NavigationDrawerWidget(),
        ),
      );

      final finder = find.byWidgetPredicate(
        (widget) => widget is NavigationItem && widget.key == key,
      );
      expect(finder, findsOneWidget);

      await tester.tap(finder);
    });

    testWidgets('renders a documents [ListTile]', (tester) async {
      final key = Key('navigation_item_documents');
      await tester.pumpApp(
        widget: Scaffold(
          body: NavigationDrawerWidget(),
        ),
      );

      final finder = find.byWidgetPredicate(
        (widget) => widget is NavigationItem && widget.key == key,
      );
      expect(finder, findsOneWidget);

      await tester.tap(finder);
    });

    testWidgets('renders a reports [ListTile]', (tester) async {
      final key = Key('navigation_item_reports');
      await tester.pumpApp(
        widget: Scaffold(
          body: NavigationDrawerWidget(),
        ),
      );

      final finder = find.byWidgetPredicate(
        (widget) => widget is NavigationItem && widget.key == key,
      );
      expect(finder, findsOneWidget);

      await tester.tap(finder);
    });

    testWidgets('renders team item 1 [ListTile]', (tester) async {
      final key = Key('navigation_team_item_1');
      await tester.pumpApp(
        widget: Scaffold(
          body: NavigationDrawerWidget(),
        ),
      );

      final finder = find.byWidgetPredicate(
        (widget) => widget is NavigationTeamItem && widget.key == key,
      );
      expect(finder, findsOneWidget);

      await tester.tap(finder);
    });

    testWidgets('renders team item 2 [ListTile]', (tester) async {
      final key = Key('navigation_team_item_2');
      await tester.pumpApp(
        widget: Scaffold(
          body: NavigationDrawerWidget(),
        ),
      );

      final finder = find.byWidgetPredicate(
        (widget) => widget is NavigationTeamItem && widget.key == key,
      );
      expect(finder, findsOneWidget);

      await tester.tap(finder);
    });

    testWidgets('renders team item 3 [ListTile]', (tester) async {
      final key = Key('navigation_team_item_3');
      await tester.pumpApp(
        widget: Scaffold(
          body: NavigationDrawerWidget(),
        ),
      );

      final finder = find.byWidgetPredicate(
        (widget) => widget is NavigationTeamItem && widget.key == key,
      );
      expect(finder, findsOneWidget);

      await tester.tap(finder);
    });
  });

  group('NavigationRailWidget', () {
    testWidgets('renders a [NavigationRail]', (tester) async {
      await tester.pumpApp(
        widget: Scaffold(
          body: NavigationRailWidget(),
        ),
      );

      final finder = find.byType(NavigationRail);
      expect(finder, findsOneWidget);

      await tester.tap(find.text('Dashboard'));
    });
  });
}

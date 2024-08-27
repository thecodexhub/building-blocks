import 'package:building_blocks/home/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_layout/responsive_layout.dart';

/// {@template home_page}
/// Displays the home page.
/// {@endtemplate}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
      small: (_, __) => const HomePageSmallLayout(),
      medium: (_, __) => const HomePageMediumLayout(),
      large: (_, __) => const HomePageLargeLayout(),
    );
  }
}

/// {@template home_page_large_layout}
/// Home page UI for large layout.
/// {@endtemplate}
class HomePageLargeLayout extends StatelessWidget {
  /// {@macro home_page_large_layout}
  const HomePageLargeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 304,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 32,
              ),
              child: NavigationDrawer(),
            ),
          ),
          VerticalDivider(
            color: Colors.black26,
            thickness: 0.4,
          ),
          Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}

/// {@template home_page_medium_layout}
/// Home page UI for medium layout.
/// {@endtemplate}
class HomePageMediumLayout extends StatelessWidget {
  /// {@macro home_page_medium_layout}
  const HomePageMediumLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: kIsWeb ? 24 : kToolbarHeight + 16,
          ),
          child: NavigationDrawer(),
        ),
      ),
      body: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kIsWeb ? 0 : kToolbarHeight + 2,
            ),
            child: NavigationRailWidget(),
          ),
          VerticalDivider(
            color: Colors.black26,
            thickness: 0.4,
          ),
        ],
      ),
    );
  }
}

/// {@template home_page_small_layout}
/// Home page UI for small layout.
/// {@endtemplate}
class HomePageSmallLayout extends StatelessWidget {
  /// {@macro home_page_small_layout}
  const HomePageSmallLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: kIsWeb ? 24 : kToolbarHeight + 16,
          ),
          child: NavigationDrawer(),
        ),
      ),
    );
  }
}

/// {@template navigation_rail_widget}
/// Displays the navigation items in a [NavigationRail].
/// {@endtemplate}
class NavigationRailWidget extends StatelessWidget {
  /// {@macro navigation_rail_widget}
  const NavigationRailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: 0,
      labelType: NavigationRailLabelType.all,
      indicatorShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      selectedLabelTextStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.red[900],
          ),
      selectedIconTheme: Theme.of(context).iconTheme.copyWith(
            color: Colors.red[900],
          ),
      unselectedIconTheme: Theme.of(context).iconTheme.copyWith(
            color: Colors.black45,
          ),
      unselectedLabelTextStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
      onDestinationSelected: (value) {},
      indicatorColor: const Color(0xFFFFF3F6),
      backgroundColor: Colors.white,
      destinations: const [
        NavigationRailDestination(
          icon: Icon(Icons.home_outlined),
          label: Text('Dashboard'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.people_outline),
          label: Text('Teams'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.folder_copy_outlined),
          label: Text('Projects'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.calendar_today_outlined),
          label: Text('Calendar'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.file_copy_outlined),
          label: Text('Documents'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.leaderboard_outlined),
          label: Text('Reports'),
        ),
      ],
      leading: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
    );
  }
}

/// {@template navigation_drawer}
/// Displays the navigation items in a listview.
/// {@endtemplate}
class NavigationDrawer extends StatelessWidget {
  /// {@macro navigation_drawer}
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'Building Blocks',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.red[900],
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ),
        const SizedBox(height: 32),
        NavigationItem(
          title: 'Dashboard',
          icon: Icons.home_outlined,
          selected: true,
          onTap: () {},
        ),
        NavigationItem(
          title: 'Teams',
          icon: Icons.people_outline,
          onTap: () {},
        ),
        NavigationItem(
          title: 'Projects',
          icon: Icons.folder_copy_outlined,
          onTap: () {},
        ),
        NavigationItem(
          title: 'Calendar',
          icon: Icons.calendar_today_outlined,
          onTap: () {},
        ),
        NavigationItem(
          title: 'Documents',
          icon: Icons.file_copy_outlined,
          onTap: () {},
        ),
        NavigationItem(
          title: 'Reports',
          icon: Icons.leaderboard_outlined,
          onTap: () {},
        ),
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Your teams',
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        const SizedBox(height: 16),
        NavigationTeamItem(
          title: 'Apex Horizon',
          selected: true,
          onTap: () {},
        ),
        NavigationTeamItem(
          title: 'Quantum Surge',
          onTap: () {},
        ),
        NavigationTeamItem(
          title: 'Cipher',
          onTap: () {},
        ),
      ],
    );
  }
}

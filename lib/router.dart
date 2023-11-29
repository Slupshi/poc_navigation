import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'shellA');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');
final _shellNavigatorCKey = GlobalKey<NavigatorState>(debugLabel: 'shellC');

final GoRouter goRouter = GoRouter(
  initialLocation: '/a',
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: [
    // Stateful nested navigation based on:
    // https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        // the UI shell
        return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
      },
      branches: [
        // first branch (A)
        StatefulShellBranch(
          navigatorKey: _shellNavigatorAKey,
          routes: [
            // top route inside branch
            GoRoute(
              path: '/a',
              pageBuilder: (context, state) => NoTransitionPage(
                child: CustomScaffold(
                  title: 'Appbar de A',
                  hasLeadingAvatar: true,
                  body: Center(
                    child: TextButton(
                      child: const Text("A route button"),
                      onPressed: () => context.go("/a/details"),
                    ),
                  ),
                ),
              ),
              routes: [
                // child route
                GoRoute(
                  path: 'details',
                  pageBuilder: (context, state) => const NoTransitionPage(
                    child: CustomScaffold(
                      title: 'Appbar de A détails',
                      body: Center(
                        child: Text("A details"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        // second branch (B)
        StatefulShellBranch(
          navigatorKey: _shellNavigatorBKey,
          routes: [
            // top route inside branch
            GoRoute(
              path: '/b',
              pageBuilder: (context, state) => NoTransitionPage(
                child: CustomScaffold(
                  title: 'Appbar de B',
                  hasTrailingButtons: true,
                  body: Center(
                    child: TextButton(
                      child: const Text("B to D route button"),
                      onPressed: () => context.push("/d"),
                    ),
                  ),
                ),
              ),
              routes: [
                // child route
                GoRoute(
                  path: 'details',
                  pageBuilder: (context, state) => const NoTransitionPage(
                    child: CustomScaffold(
                      title: 'Appbar de B détails',
                      body: Center(
                        child: Text("B details"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        // second branch (C)
        StatefulShellBranch(
          navigatorKey: _shellNavigatorCKey,
          routes: [
            // top route inside branch
            GoRoute(
              path: '/c',
              pageBuilder: (context, state) => NoTransitionPage(
                child: CustomScaffold(
                  title: 'Appbar de C',
                  hasTrailingButtons: true,
                  hasLeadingAvatar: true,
                  body: Center(
                    child: Column(
                      children: [
                        TextButton(
                          child: const Text("C to details"),
                          onPressed: () => context.go("/c/details"),
                        ),
                        TextButton(
                          child: const Text("C to A route button"),
                          onPressed: () => context.go("/a"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              routes: [
                // child route
                GoRoute(
                  path: 'details',
                  pageBuilder: (context, state) => const NoTransitionPage(
                    child: CustomScaffold(
                      title: 'Appbar de C détails',
                      body: Center(
                        child: Text("C details"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/d',
      parentNavigatorKey: _rootNavigatorKey,
      pageBuilder: (context, state) => const NoTransitionPage(
        child: CustomScaffold(
          title: "Appbar de D",
          background: Colors.green,
          body: Center(
            child: Text("D route"),
          ),
        ),
      ),
    ),
  ],
);

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // layout breakpoint: tweak as needed
      if (constraints.maxWidth < 450) {
        return ScaffoldWithNavigationBar(
          body: navigationShell,
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: _goBranch,
        );
      } else {
        return ScaffoldWithNavigationRail(
          body: navigationShell,
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: _goBranch,
        );
      }
    });
  }
}

class ScaffoldWithNavigationBar extends StatelessWidget {
  const ScaffoldWithNavigationBar({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        destinations: const [
          NavigationDestination(label: 'Section A', icon: Icon(Icons.home)),
          NavigationDestination(label: 'Section B', icon: Icon(Icons.settings)),
          NavigationDestination(label: 'Section C', icon: Icon(Icons.message)),
        ],
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}

class ScaffoldWithNavigationRail extends StatelessWidget {
  const ScaffoldWithNavigationRail({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Fixed navigation rail on the left (start)
          NavigationRail(
            selectedIndex: selectedIndex,
            onDestinationSelected: onDestinationSelected,
            labelType: NavigationRailLabelType.all,
            destinations: const [
              NavigationRailDestination(
                label: Text('Section A'),
                icon: Icon(Icons.home),
              ),
              NavigationRailDestination(
                label: Text('Section B'),
                icon: Icon(Icons.settings),
              ),
              NavigationRailDestination(
                label: Text('Section C'),
                icon: Icon(Icons.message),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // Main content on the right (end)
          Expanded(
            child: body,
          ),
        ],
      ),
    );
  }
}

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.title,
    required this.body,
    this.hasLeadingAvatar = false,
    this.hasTrailingButtons = false,
    this.background,
  });

  final Widget body;
  final String title;
  final bool hasLeadingAvatar;
  final bool hasTrailingButtons;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        leading: hasLeadingAvatar
            ? Container(
                color: Colors.blue,
                height: 30,
                width: 30,
              )
            : null,
        backgroundColor: Colors.red,
        title: Text(title),
        actions: hasTrailingButtons
            ? [
                Container(
                  color: Colors.yellow,
                  height: 15,
                  width: 15,
                ),
                const SizedBox(width: 10),
                Container(
                  color: Colors.yellow,
                  height: 15,
                  width: 15,
                ),
              ]
            : [],
      ),
      body: body,
    );
  }
}

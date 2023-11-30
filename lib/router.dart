import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_navigation/navigation.dart';
import 'package:poc_navigation/screens/screens.dart';

part 'router.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

final GoRouter goRouter = GoRouter(
  initialLocation: const HomeViewRouteData().location,
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: $appRoutes,
);

@TypedStatefulShellRoute<MainStatefulShellRouteData>(
  branches: [
    // First shell branch
    TypedStatefulShellBranch<HomeViewShellBranchData>(
      routes: [
        // First route of the branch
        TypedGoRoute<HomeViewRouteData>(
          path: HomeViewRouteData.path,
          routes: [
            // Nested routes
            TypedGoRoute<HomeDetailViewRouteData>(
                path: HomeDetailViewRouteData.path),
          ],
        )
      ],
    ),
    // Second shell branch
    TypedStatefulShellBranch<SecondViewShellBranchData>(
      routes: [
        // First route of the branch
        TypedGoRoute<SecondViewRouteData>(
          path: SecondViewRouteData.path,
          routes: [
            // Nested routes
            TypedGoRoute<SecondDetailViewRouteData>(
                path: SecondDetailViewRouteData.path),
          ],
        )
      ],
    ),
    TypedStatefulShellBranch<ThirdViewShellBranchData>(
      routes: [
        TypedGoRoute<ThirdViewRouteData>(
          path: ThirdViewRouteData.path,
        )
      ],
    ),
  ],
)
class MainStatefulShellRouteData extends StatefulShellRouteData {
  const MainStatefulShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = _shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state,
      StatefulNavigationShell navigationShell) {
    return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
  }
}

//===============| Home View Shell Branch |===============//
class HomeViewShellBranchData extends StatefulShellBranchData {
  const HomeViewShellBranchData();
}

class HomeViewRouteData extends GoRouteData {
  static const String path = '/home';
  const HomeViewRouteData();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeView();
  }
}

class HomeDetailViewRouteData extends GoRouteData {
  static const String path = 'detail';
  const HomeDetailViewRouteData({required this.id});

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HomeDetailView(id: id);
  }
}

//===============| SecondView Shell Branch |===============//
class SecondViewShellBranchData extends StatefulShellBranchData {
  const SecondViewShellBranchData();
}

class SecondViewRouteData extends GoRouteData {
  static const String path = '/second';
  const SecondViewRouteData();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SecondView();
  }
}

class SecondDetailViewRouteData extends GoRouteData {
  static const String path = 'detail';
  const SecondDetailViewRouteData();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SecondDetailView();
  }
}

//===============| ThirdView Shell Branch |===============//
class ThirdViewShellBranchData extends StatefulShellBranchData {
  const ThirdViewShellBranchData();
}

class ThirdViewRouteData extends GoRouteData {
  static const String path = '/third';
  const ThirdViewRouteData();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ThirdView();
  }
}

//===============| NonNested Routes (Routes without navigation bar) |===============//

@TypedGoRoute<IndependentViewRouteData>(path: IndependentViewRouteData.path)
class IndependentViewRouteData extends GoRouteData {
  static const String path = '/independent';
  const IndependentViewRouteData();

  static final GlobalKey<NavigatorState> $parentNavigatorKey =
      _rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const IndependentView();
  }
}

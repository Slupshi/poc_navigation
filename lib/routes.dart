import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_navigation/navigation.dart';
import 'package:poc_navigation/router.dart';
import 'package:poc_navigation/screens.dart';

part 'routes.g.dart';

final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedStatefulShellRoute<MyStatefulShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<SectionAShellRoute>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<SectionARoute>(
          path: SectionARoute.path,
          routes: [
            TypedGoRoute<SectionADetailRoute>(path: SectionADetailRoute.path),
          ],
        )
      ],
    ),
    TypedStatefulShellBranch<SectionBShellRoute>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<SectionBRoute>(
          path: SectionBRoute.path,
          routes: [
            TypedGoRoute<SectionBDetailRoute>(path: SectionBDetailRoute.path),
          ],
        )
      ],
    ),
    TypedStatefulShellBranch<SectionCShellRoute>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<SectionCRoute>(
          path: SectionCRoute.path,
        )
      ],
    ),
  ],
)
class MyStatefulShellRouteData extends StatefulShellRouteData {
  const MyStatefulShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state,
      StatefulNavigationShell navigationShell) {
    return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
  }
}

class SectionAShellRoute extends StatefulShellBranchData {
  const SectionAShellRoute();
}

class SectionARoute extends GoRouteData {
  static const String path = '/a';
  const SectionARoute();
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const SectionA();
  }
}

class SectionBShellRoute extends StatefulShellBranchData {
  const SectionBShellRoute();
}

class SectionADetailRoute extends GoRouteData {
  static const String path = 'detail';
  const SectionADetailRoute();
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const SectionADetail();
  }
}

class SectionBRoute extends GoRouteData {
  static const String path = '/b';
  const SectionBRoute();
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const SectionB();
  }
}

class SectionBDetailRoute extends GoRouteData {
  static const String path = 'detail';
  const SectionBDetailRoute();
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const SectionBDetail();
  }
}

class SectionCShellRoute extends StatefulShellBranchData {
  const SectionCShellRoute();
}

class SectionCRoute extends GoRouteData {
  static const String path = '/c';
  const SectionCRoute();
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const SectionC();
  }
}

@TypedGoRoute<SectionDRoute>(path: SectionDRoute.path)
class SectionDRoute extends GoRouteData {
  static const String path = '/d';
  const SectionDRoute();

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const SectionD();
  }
}

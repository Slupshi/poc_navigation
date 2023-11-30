// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $myStatefulShellRouteData,
      $sectionDRoute,
    ];

RouteBase get $myStatefulShellRouteData => StatefulShellRouteData.$route(
      factory: $MyStatefulShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/a',
              factory: $SectionARouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'detail',
                  factory: $SectionADetailRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/b',
              factory: $SectionBRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'detail',
                  factory: $SectionBDetailRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/c',
              factory: $SectionCRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $MyStatefulShellRouteDataExtension on MyStatefulShellRouteData {
  static MyStatefulShellRouteData _fromState(GoRouterState state) =>
      const MyStatefulShellRouteData();
}

extension $SectionARouteExtension on SectionARoute {
  static SectionARoute _fromState(GoRouterState state) => const SectionARoute();

  String get location => GoRouteData.$location(
        '/a',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SectionADetailRouteExtension on SectionADetailRoute {
  static SectionADetailRoute _fromState(GoRouterState state) =>
      const SectionADetailRoute();

  String get location => GoRouteData.$location(
        '/a/detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SectionBRouteExtension on SectionBRoute {
  static SectionBRoute _fromState(GoRouterState state) => const SectionBRoute();

  String get location => GoRouteData.$location(
        '/b',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SectionBDetailRouteExtension on SectionBDetailRoute {
  static SectionBDetailRoute _fromState(GoRouterState state) =>
      const SectionBDetailRoute();

  String get location => GoRouteData.$location(
        '/b/detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SectionCRouteExtension on SectionCRoute {
  static SectionCRoute _fromState(GoRouterState state) => const SectionCRoute();

  String get location => GoRouteData.$location(
        '/c',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $sectionDRoute => GoRouteData.$route(
      path: '/d',
      parentNavigatorKey: SectionDRoute.$parentNavigatorKey,
      factory: $SectionDRouteExtension._fromState,
    );

extension $SectionDRouteExtension on SectionDRoute {
  static SectionDRoute _fromState(GoRouterState state) => const SectionDRoute();

  String get location => GoRouteData.$location(
        '/d',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

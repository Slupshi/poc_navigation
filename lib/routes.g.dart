// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $sectionARoute,
    ];

RouteBase get $sectionARoute => GoRouteData.$route(
      path: '/',
      factory: $SectionARouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'detail',
          factory: $SectionADetailRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'b',
          factory: $SectionBRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'b/detail',
          factory: $SectionBDetailRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'c',
          factory: $SectionCRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'd',
          factory: $SectionDRouteExtension._fromState,
        ),
      ],
    );

extension $SectionARouteExtension on SectionARoute {
  static SectionARoute _fromState(GoRouterState state) => const SectionARoute();

  String get location => GoRouteData.$location(
        '/',
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
        '/detail',
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

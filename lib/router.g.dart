// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $mainStatefulShellRouteData,
      $independentViewRouteData,
    ];

RouteBase get $mainStatefulShellRouteData => StatefulShellRouteData.$route(
      factory: $MainStatefulShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/home',
              factory: $HomeViewRouteDataExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'detail',
                  factory: $HomeDetailViewRouteDataExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/second',
              factory: $SecondViewRouteDataExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'detail',
                  factory: $SecondDetailViewRouteDataExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/third',
              factory: $ThirdViewRouteDataExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $MainStatefulShellRouteDataExtension on MainStatefulShellRouteData {
  static MainStatefulShellRouteData _fromState(GoRouterState state) =>
      const MainStatefulShellRouteData();
}

extension $HomeViewRouteDataExtension on HomeViewRouteData {
  static HomeViewRouteData _fromState(GoRouterState state) =>
      const HomeViewRouteData();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $HomeDetailViewRouteDataExtension on HomeDetailViewRouteData {
  static HomeDetailViewRouteData _fromState(GoRouterState state) =>
      HomeDetailViewRouteData(
        id: int.parse(state.uri.queryParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/home/detail',
        queryParams: {
          'id': id.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SecondViewRouteDataExtension on SecondViewRouteData {
  static SecondViewRouteData _fromState(GoRouterState state) =>
      const SecondViewRouteData();

  String get location => GoRouteData.$location(
        '/second',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SecondDetailViewRouteDataExtension on SecondDetailViewRouteData {
  static SecondDetailViewRouteData _fromState(GoRouterState state) =>
      const SecondDetailViewRouteData();

  String get location => GoRouteData.$location(
        '/second/detail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ThirdViewRouteDataExtension on ThirdViewRouteData {
  static ThirdViewRouteData _fromState(GoRouterState state) =>
      const ThirdViewRouteData();

  String get location => GoRouteData.$location(
        '/third',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $independentViewRouteData => GoRouteData.$route(
      path: '/independent',
      parentNavigatorKey: IndependentViewRouteData.$parentNavigatorKey,
      factory: $IndependentViewRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'secondIndependent',
          parentNavigatorKey:
              SecondIndependentViewRouteData.$parentNavigatorKey,
          factory: $SecondIndependentViewRouteDataExtension._fromState,
        ),
      ],
    );

extension $IndependentViewRouteDataExtension on IndependentViewRouteData {
  static IndependentViewRouteData _fromState(GoRouterState state) =>
      const IndependentViewRouteData();

  String get location => GoRouteData.$location(
        '/independent',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SecondIndependentViewRouteDataExtension
    on SecondIndependentViewRouteData {
  static SecondIndependentViewRouteData _fromState(GoRouterState state) =>
      SecondIndependentViewRouteData(
        id: int.parse(state.uri.queryParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/independent/secondIndependent',
        queryParams: {
          'id': id.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_navigation/screens.dart';

part 'routes.g.dart';

@TypedGoRoute<SectionARoute>(
  path: SectionARoute.path,
  routes: [
    TypedGoRoute<SectionADetailRoute>(path: SectionADetailRoute.path),
    TypedGoRoute<SectionBRoute>(path: SectionBRoute.path),
    TypedGoRoute<SectionBDetailRoute>(path: SectionBDetailRoute.path),
    TypedGoRoute<SectionCRoute>(path: SectionCRoute.path),
    TypedGoRoute<SectionDRoute>(path: SectionDRoute.path),
  ],
)
class SectionARoute extends GoRouteData {
  static const String path = '/';
  const SectionARoute();
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const SectionA();
  }
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
  static const String path = 'b';
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
  static const String path = 'b/detail';
  const SectionBDetailRoute();
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const SectionBDetail();
  }
}

class SectionCRoute extends GoRouteData {
  static const String path = 'c';
  const SectionCRoute();
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const SectionC();
  }
}

class SectionDRoute extends GoRouteData {
  static const String path = 'd';
  const SectionDRoute();
  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const SectionD();
  }
}

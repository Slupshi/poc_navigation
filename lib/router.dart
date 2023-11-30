import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_navigation/routes.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter goRouter = GoRouter(
  initialLocation: SectionARoute.path,
  navigatorKey: rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: $appRoutes,
);

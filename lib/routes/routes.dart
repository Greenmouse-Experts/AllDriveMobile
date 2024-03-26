import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:roadside_heroes_app/routes/app_routes_path.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static GoRouter router = GoRouter(navigatorKey: _rootNavigatorKey, routes: [
    GoRoute(
      name: AuthRoutes.onboardingScreen.name,
      path: AuthRoutes.onboardingScreen.path,
      builder: AuthRoutes.onboardingScreen.builder,
    ),
    GoRoute(
      name: AuthRoutes.viewOptions.name,
      path: AuthRoutes.viewOptions.path,
      builder: AuthRoutes.viewOptions.builder,
    ),
    GoRoute(
      name: AuthRoutes.singnIn.name,
      path: AuthRoutes.singnIn.path,
      builder: AuthRoutes.singnIn.builder,
    ),
    GoRoute(
      name: AuthRoutes.singedUser.name,
      path: AuthRoutes.singedUser.path,
      builder: AuthRoutes.singedUser.builder,
    ),
    GoRoute(
      name: AuthRoutes.unsignedUser.name,
      path: AuthRoutes.unsignedUser.path,
      builder: AuthRoutes.unsignedUser.builder,
    ),
    GoRoute(
      name: AuthRoutes.login.name,
      path: AuthRoutes.login.path,
      builder: AuthRoutes.login.builder,
    ),
  ]);
}

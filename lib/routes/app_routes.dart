import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class AppRoutes {
  // static List<AppRoute> tabs = [
  //   tab(bottomNavTab: BottomNav.home),
  //   tab(bottomNavTab: BottomNav.profile),
  //   tab(bottomNavTab: BottomNav.requests),
  //   tab(bottomNavTab: BottomNav.more),
  // ];
}

class AppRoute {
  const AppRoute({
    required this.name,
    required this.path,
    required this.builder,
  });

  final String name;
  final String path;
  final Widget Function(BuildContext, GoRouterState) builder;

  String get goRouterPath {
    if (path.split('/').length == 2) {
      return path;
    }
    return path.split('/').last;
  }
}

GoRoute toGoRoute(AppRoute appRoute) {
  return GoRoute(
    name: appRoute.name,
    path: appRoute.path,
    builder: (_, __) => appRoute.builder(_, __),
  );
}

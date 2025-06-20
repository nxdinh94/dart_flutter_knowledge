
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_scrollable_widget/app/app.dart';
import 'package:practice_scrollable_widget/app/router/my_bottom_navigation_bar.dart';

class CustomNavigationHelper {
  factory CustomNavigationHelper(String initialRoute) {
    return _instance._initialize(initialRoute);
  }

  CustomNavigationHelper._internal();
  static late final GoRouter router;

  static final GlobalKey<NavigatorState> parentNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> homeTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> walletTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> addingWorkspaceTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> budgetsTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> accountTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> authTabNavigatorKey =
      GlobalKey<NavigatorState>();

  BuildContext get context =>
      router.routerDelegate.navigatorKey.currentContext!;

  GoRouterDelegate get routerDelegate => router.routerDelegate;

  GoRouteInformationParser get routeInformationParser =>
      router.routeInformationParser;
  static final CustomNavigationHelper _instance =
      CustomNavigationHelper._internal(); //instance of CustomNavigatorHelper
  static CustomNavigationHelper get instance => _instance;

  CustomNavigationHelper _initialize(String initialRoute) {
    final routes = [
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: parentNavigatorKey,
        branches: [
          StatefulShellBranch(
            navigatorKey: homeTabNavigatorKey,
            routes: [
              GoRoute(
                path: '/',
                pageBuilder: (context, GoRouterState state) {
                  return getPage(
                    child: const Home(),
                    state: state,
                  );
                },
                routes: <RouteBase>[]
              ),

            ],
          ),
          StatefulShellBranch(
              navigatorKey: walletTabNavigatorKey,
              routes: [
                GoRoute(
                  path: '/business',
                  pageBuilder: (context, GoRouterState state) {
                    return getPage(
                      child: const Business(),
                      state: state
                    );
                  },
                  routes:  [

                  ]
                )
              ]),
          StatefulShellBranch(
              navigatorKey: addingWorkspaceTabNavigatorKey,
              routes: [
                GoRoute(
                  path: '/school',
                  pageBuilder: (context, GoRouterState state) {
                    return getPage(
                      child: School(),
                      state: state
                    );
                  },
                  routes: [

                  ]),
              ]),

        ],
        pageBuilder: (BuildContext context, GoRouterState state,
            StatefulNavigationShell navigationShell) {
          return getPage(
            child: MyBottomNavigationBar(
              child: navigationShell
            ),
            state: state,
          );
        },
      ),

    ];

    router = GoRouter(
      navigatorKey: parentNavigatorKey,
      initialLocation: initialRoute,
      routes: routes,
    );
    return this;
  }

  static Page getPage({
    required Widget child,
    required GoRouterState state,
  }) {
    return CustomTransitionPage(
      child: child,
      key: state.pageKey,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(-1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      ),
    );
  }
}

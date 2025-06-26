
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_scrollable_widget/app/app.dart';
import 'package:practice_scrollable_widget/core/core.dart';

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
    static final GlobalKey<NavigatorState> businessTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> schoolTabNavigatorKey =
      GlobalKey<NavigatorState>();

  static final GlobalKey<NavigatorState> schoolHomeTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> schoolClassesTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> schoolFlightClassesTabNavigatorKey =
      GlobalKey<NavigatorState>();

  BuildContext get context =>
      router.routerDelegate.navigatorKey.currentContext!;

  GoRouterDelegate get routerDelegate => router.routerDelegate;

  GoRouteInformationParser get routeInformationParser =>
      router.routeInformationParser;
  static final CustomNavigationHelper _instance =
      CustomNavigationHelper._internal(); //instance of Cust  omNavigatorHelper
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
            navigatorKey: businessTabNavigatorKey,
            routes: [
              GoRoute(
                path: '/business',
                pageBuilder: (context, GoRouterState state) {
                  return getPage(
                    child: const Business(),
                    state: state,
                  );
                },
                routes:  [

                ],
              ),
            ],
          ),
          StatefulShellBranch(
              navigatorKey: schoolTabNavigatorKey,
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
            StatefulNavigationShell navigationShell,) {
          return getPage(
            child: MyBottomNavigationBar(
              child: navigationShell,
            ),
            state: state,
          );
        },
      ),
      // This is the route for the school tab
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: parentNavigatorKey,
        branches: [
          StatefulShellBranch(
            navigatorKey: schoolHomeTabNavigatorKey,
            routes: [
              GoRoute(
                path: '/schoolHome',
                pageBuilder: (context, GoRouterState state) {
                  return getPage(
                    child: const SchoolHome(),
                    state: state,
                  );
                },
                routes: <RouteBase>[

                ]
              ),
            ],
          ),
          StatefulShellBranch(
              navigatorKey: schoolClassesTabNavigatorKey,
              routes: [
                GoRoute(
                  path: '/schoolClasses',
                  pageBuilder: (context, GoRouterState state) {
                    return getPage(
                      child: const Classes(),
                      state: state
                    );
                  },
                  routes:  [

                  ]
                )
              ]),
          StatefulShellBranch(
              navigatorKey: schoolFlightClassesTabNavigatorKey,
              routes: [
                GoRoute(
                  path: '/schoolFlightClasses',
                  pageBuilder: (context, GoRouterState state) {
                    return getPage(
                      child: const FlightClasses(),
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
            child: SchoolBottomNavigationBar(
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
      errorBuilder: (context, state) {
        return ErrorRoute(state: state);
      },
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



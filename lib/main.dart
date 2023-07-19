import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/view/home/screen_1.dart';
import 'package:go_router_demo/view/main_screnn/main_scrreen.dart';
import 'package:go_router_demo/view/setting/screen_3.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
    );
  }
}

class AppRouts {
  static String home = '/home';
  static String setting = '/setting';
}

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'shellA');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');

final goRouter = GoRouter(
  initialLocation: AppRouts.home,
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorAKey,
          routes: [
            GoRoute(
              path: AppRouts.home,
              pageBuilder: (context, state) => NoTransitionPage(
                child: Screen1(),
              ),
              routes: [],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorBKey,
          routes: [
            // Shopping Cart
            GoRoute(
              path: AppRouts.setting,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: Screen3(),
              ),
              routes: [],
            ),
          ],
        ),
      ],
    ),
  ],
);

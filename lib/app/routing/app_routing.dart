import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants/fake_tutors.dart';
import '../constants/home_navigation_items.dart';
import '../features/course/presentation/view/course_detail_screen.dart';
import '../features/home/app_scaffold.dart';
import '../features/home/data/home_navigation_item.dart';
import '../features/tutor/presentation/view/tutor_detail_screen.dart';
import 'coordinator.dart';
import 'not_found_screen.dart';

enum AppRoute {
  tutors,
  tutor,
  courses,
  course,
  signIn,
  schedule,
  history,
}

GoRouter goRoute() => GoRouter(
      initialLocation: HomeNavigationItems.items[0].path,
      navigatorKey: XCoordinator.navigatorKey,
      routes: [
        ShellRoute(
          navigatorKey: XCoordinator.shellKey,
          builder: (context, state, child) {
            return AppScaffold(child: child);
          },
          routes: <RouteBase>[
            _bottomNavigationItemBuilder(HomeNavigationItems.items[0], routes: [
              GoRoute(
                path: ':id',
                name: AppRoute.tutor.name,
                builder: (context, state) {
                  final id = int.parse(state.params['id'] ?? '1');
                  final item = fakeTutors[id - 1];
                  return TutorDetailScreen(
                    item: item,
                  );
                },
              )
            ]),
            _bottomNavigationItemBuilder(HomeNavigationItems.items[1]),
            _bottomNavigationItemBuilder(HomeNavigationItems.items[2]),
            _bottomNavigationItemBuilder(HomeNavigationItems.items[3], routes: [
              GoRoute(
                  path: ':id',
                  name: AppRoute.course.name,
                  pageBuilder: (context, state) {
                    final id = int.parse(state.params['id'] ?? '1');
                    final course = fakeTutors[id - 1];
                    return MaterialPage(
                      key: ValueKey(state.location),
                      fullscreenDialog: true,
                      child: const CourseDetailScreen(),
                    );
                  }),
            ]),
            _bottomNavigationItemBuilder(HomeNavigationItems.items[4]),
          ],
        ),
      ],
      errorBuilder: (context, state) => const NotFoundScreen(),
    );

GoRoute _bottomNavigationItemBuilder(HomeNavigationItem item,
        {List<RouteBase> routes = const <RouteBase>[]}) =>
    GoRoute(
      path: item.path,
      name: item.route.name,
      pageBuilder: (_, __) {
        return NoTransitionPage(
          child: item.view,
        );
      },
      routes: routes,
    );

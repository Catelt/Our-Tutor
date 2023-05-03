import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../constants/home_navigation_items.dart';
import '../features/account/bloc/account_cubit.dart';
import '../features/authentication/router/coordination.dart';
import '../features/course/view/course_detail/course_detail_screen.dart';
import '../features/home/app_scaffold.dart';
import '../features/home/data/home_navigation_item.dart';
import '../features/tutor/view/feedback/feedback_screen.dart';
import '../features/tutor/view/tutor_detail/tutor_detail_screen.dart';
import '../features/video_call/video_call_screen.dart';
import 'custom_transition.dart';
import 'not_found_screen.dart';

enum AppRoute {
  tutors,
  tutor,
  feedback,

  courses,
  course,
  signIn,
  schedule,
  history,
  account,

  videoCall,
}

class XAppRouter {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static final shellKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    initialLocation: '/signIn',
    navigatorKey: navigatorKey,
    redirect: (context, state) {
      if (context.read<AccountCubit>().state.isLogin) {
        if (state.location.contains(RegExp(r'signIn'))) {
          return HomeNavigationItems.items[0].path;
        }
      }
      return null;
    },
    routes: [
      for (var i = 0; i < AuthCoordinator.router.length; i++)
        AuthCoordinator.router[i],
      ShellRoute(
        navigatorKey: shellKey,
        builder: (context, state, child) {
          return AppScaffold(child: child);
        },
        routes: <RouteBase>[
          _bottomNavigationItemBuilder(HomeNavigationItems.items[0], routes: [
            GoRoute(
              parentNavigatorKey: XAppRouter.navigatorKey,
              path: ':id',
              name: AppRoute.tutor.name,
              pageBuilder: (context, state) => DefaultTransition(
                child: TutorDetailScreen(id: state.params['id'] ?? ""),
              ),
              routes: [
                GoRoute(
                  parentNavigatorKey: XAppRouter.navigatorKey,
                  path: 'feedback',
                  name: AppRoute.feedback.name,
                  pageBuilder: (context, state) => DefaultTransition(
                    child: FeedbackScreen(tutorId: state.params['id'] ?? ""),
                  ),
                ),
              ],
            ),
          ]),
          _bottomNavigationItemBuilder(HomeNavigationItems.items[1]),
          _bottomNavigationItemBuilder(HomeNavigationItems.items[2]),
          _bottomNavigationItemBuilder(HomeNavigationItems.items[3], routes: [
            GoRoute(
              parentNavigatorKey: XAppRouter.navigatorKey,
              path: ':id',
              name: AppRoute.course.name,
              pageBuilder: (context, state) => DefaultTransition(
                child: CourseDetailScreen(id: state.params['id'] ?? ''),
              ),
            ),
          ]),
          _bottomNavigationItemBuilder(HomeNavigationItems.items[4]),
        ],
      ),
      GoRoute(
        parentNavigatorKey: XAppRouter.navigatorKey,
        path: '/call/:id',
        name: AppRoute.videoCall.name,
        pageBuilder: (context, state) => DefaultTransition(
          child: VideoCallScreen(),
        ),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );

  static GoRoute _bottomNavigationItemBuilder(HomeNavigationItem item,
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
}

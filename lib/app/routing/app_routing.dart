import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../constants/home_navigation_items.dart';
import '../features/account/bloc/account_cubit.dart';
import '../features/account/view/become_tutor/become_tutor_screen.dart';
import '../features/account/view/edit_profile/edit_profile_screen.dart';
import '../features/authentication/router/coordination.dart';
import '../features/chat/chat_screen.dart';
import '../features/course/view/course_detail/course_detail_screen.dart';
import '../features/course/view/topic_detail/topic_detail_screen.dart';
import '../features/home/app_scaffold.dart';
import '../features/home/data/home_navigation_item.dart';
import '../features/tutor/view/feedback/feedback_screen.dart';
import '../features/tutor/view/tutor_detail/tutor_detail_screen.dart';
import '../features/video_call/video_call_screen.dart';
import '../network/model/booking/booking.dart';
import '../network/model/course/course.dart';
import 'custom_transition.dart';
import 'not_found_screen.dart';

enum AppRoute {
  tutors,
  tutor,
  feedback,

  courses,
  course,
  topic,

  signIn,
  schedule,
  history,

  account,
  editProfile,
  becomeTutor,

  videoCall,
  chat,
}

class XAppRouter {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static final shellKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    initialLocation: '/signIn',
    navigatorKey: navigatorKey,
    redirect: (context, state) {
      if (context.read<AccountCubit>().state.isLogin) {
        if (state.uri.toString().contains(RegExp(r'signIn'))) {
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
                child: TutorDetailScreen(id: state.pathParameters['id'] ?? ""),
              ),
              routes: [
                GoRoute(
                  parentNavigatorKey: XAppRouter.navigatorKey,
                  path: 'feedback',
                  name: AppRoute.feedback.name,
                  pageBuilder: (context, state) => DefaultTransition(
                    child: FeedbackScreen(tutorId: state.pathParameters['id'] ?? ""),
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
                child: CourseDetailScreen(id: state.pathParameters['id'] ?? ''),
              ),
            ),
            GoRoute(
                parentNavigatorKey: XAppRouter.navigatorKey,
                path: 'explore-course/:id',
                name: AppRoute.topic.name,
                pageBuilder: (context, state) {
                  return DefaultTransition(
                    child: TopicDetailScreen(
                      id: state.pathParameters['id'] ?? '',
                      course:
                          state.extra != null ? state.extra as MCourse : null,
                      initSelect: state.uri.queryParameters['index'] != null
                          ? int.parse(state.uri.queryParameters['index'] ?? '0')
                          : 0,
                    ),
                  );
                })
          ]),
          _bottomNavigationItemBuilder(HomeNavigationItems.items[4], routes: [
            GoRoute(
              parentNavigatorKey: XAppRouter.navigatorKey,
              path: 'editProfile',
              name: AppRoute.editProfile.name,
              pageBuilder: (context, state) => DefaultTransition(
                child: EditProfileScreen(),
              ),
            ),
            GoRoute(
              parentNavigatorKey: XAppRouter.navigatorKey,
              path: 'becomeTutor',
              name: AppRoute.becomeTutor.name,
              pageBuilder: (context, state) => DefaultTransition(
                child: BecomeTutorScreen(),
              ),
            ),
          ]),
        ],
      ),
      GoRoute(
        parentNavigatorKey: XAppRouter.navigatorKey,
        path: '/call/:id',
        name: AppRoute.videoCall.name,
        pageBuilder: (context, state) => DefaultTransition(
          child: VideoCallScreen(booking: state.extra as MBooking),
        ),
      ),
      GoRoute(
        parentNavigatorKey: XAppRouter.navigatorKey,
        path: '/chat',
        name: AppRoute.chat.name,
        pageBuilder: (context, state) => DefaultTransition(
          child: ChatScreen(),
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

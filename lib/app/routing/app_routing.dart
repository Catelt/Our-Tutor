import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:our_tutor/app/constants/fake_tutors.dart';
import 'package:our_tutor/app/features/authentication/presentation/view/sign_in_screen.dart';
import 'package:our_tutor/app/features/course/presentation/view/course_detail_screen.dart';
import 'package:our_tutor/app/features/course/presentation/view/courses_screen.dart';
import 'package:our_tutor/app/features/history/presentation/view/history_screen.dart';
import 'package:our_tutor/app/features/home/app_scaffold.dart';
import 'package:our_tutor/app/features/schedule/presentation/view/schedule_screen.dart';
import 'package:our_tutor/app/features/tutor/presentation/view/tutor_detail_screen.dart';
import 'package:our_tutor/app/features/tutor/presentation/view/tutor_screen.dart';
import 'package:our_tutor/app/routing/not_found_screen.dart';

enum AppRoute {
  tutors,
  tutor,
  courses,
  course,
  signIn,
  schedule,
  history,
}

extension AppRoutePath on AppRoute {
  String get path {
    switch (this) {
      case AppRoute.tutors:
        return '/tutors';
      case AppRoute.courses:
        return '/courses';
      case AppRoute.signIn:
        return '/signIn';
      case AppRoute.schedule:
        return '/schedule';
      case AppRoute.history:
        return '/history';
      default:
        return '/';
    }
  }
}

final goRouter = GoRouter(
  initialLocation: AppRoute.tutors.path,
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return AppScaffold(child: child);
      },
      routes: <RouteBase>[
        GoRoute(
          path: AppRoute.tutors.path,
          name: AppRoute.tutors.name,
          builder: (context, state) => const TutorScreen(),
          routes: [
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
          ],
        ),
        GoRoute(
          path: AppRoute.schedule.path,
          name: AppRoute.schedule.name,
          pageBuilder: (context, state) => MaterialPage(
              key: state.pageKey,
              fullscreenDialog: true,
              child: const ScheduleScreen()),
        ),
        GoRoute(
          path: AppRoute.history.path,
          name: AppRoute.history.name,
          pageBuilder: (context, state) => MaterialPage(
              key: state.pageKey,
              fullscreenDialog: true,
              child: const HistoryScreen()),
        ),
        GoRoute(
          path: AppRoute.courses.path,
          name: AppRoute.courses.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            fullscreenDialog: true,
            child: const CoursesScreen(),
          ),
          routes: [
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
          ],
        ),
        GoRoute(
          path: AppRoute.signIn.path,
          name: AppRoute.signIn.name,
          pageBuilder: (context, state) => MaterialPage(
              key: state.pageKey,
              fullscreenDialog: true,
              child: const SignInScreen()),
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => const NotFoundScreen(),
);

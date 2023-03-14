import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:our_tutor/app/constants/fake_tutors.dart';
import 'package:our_tutor/app/features/authentication/presentation/view/sign_in_screen.dart';
import 'package:our_tutor/app/features/course/presentation/view/course_detail_screen.dart';
import 'package:our_tutor/app/features/course/presentation/view/courses_screen.dart';
import 'package:our_tutor/app/features/home/app_scaffold.dart';
import 'package:our_tutor/app/features/tutor/presentation/view/tutor_detail_screen.dart';
import 'package:our_tutor/app/features/tutor/presentation/view/tutor_screen.dart';
import 'package:our_tutor/app/routing/not_found_screen.dart';

enum AppRoute {
  tutors,
  tutor,
  courses,
  course,
  signIn,
}

final goRouter = GoRouter(
  initialLocation: '/tutors',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return AppScaffold(child: child);
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/tutors',
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
          path: '/courses',
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
          path: '/signIn',
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

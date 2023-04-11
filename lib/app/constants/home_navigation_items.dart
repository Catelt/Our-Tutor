import 'package:our_tutor/app/constants/app_icon.dart';
import 'package:our_tutor/app/features/authentication/presentation/view/sign_in_screen.dart';
import 'package:our_tutor/app/features/course/presentation/view/courses_screen.dart';
import 'package:our_tutor/app/features/history/presentation/view/history_screen.dart';
import 'package:our_tutor/app/features/home/data/home_navigation_item.dart';
import 'package:our_tutor/app/features/schedule/presentation/view/schedule_screen.dart';
import 'package:our_tutor/app/features/tutor/presentation/view/tutor_screen.dart';
import 'package:our_tutor/app/routing/app_routing.dart';

class HomeNavigationItems {
  static final tutors = HomeNavigationItem(
    route: AppRoute.tutors,
    path: '/tutors',
    icon: AppIcon.icBoardTeacher,
    selectedIcon: AppIcon.icBoardTeacher,
    tooltip: 'Tutor',
    label: 'Tutor',
    view: const TutorScreen(),
  );

  static final schedule = HomeNavigationItem(
    route: AppRoute.schedule,
    path: '/schedule',
    icon: AppIcon.icScheduleCheck,
    selectedIcon: AppIcon.icScheduleCheck,
    tooltip: 'Schedule',
    label: 'Schedule',
    view: const ScheduleScreen(),
  );

  static final history = HomeNavigationItem(
    route: AppRoute.history,
    path: '/history',
    icon: AppIcon.icHistory,
    selectedIcon: AppIcon.icHistory,
    tooltip: 'History',
    label: 'History',
    view: const HistoryScreen(),
  );

  static final courses = HomeNavigationItem(
    route: AppRoute.courses,
    path: '/courses',
    icon: AppIcon.icGraduationCap,
    selectedIcon: AppIcon.icGraduationCap,
    tooltip: 'Course',
    label: 'Course',
    view: const CoursesScreen(),
  );

  static final account = HomeNavigationItem(
    route: AppRoute.signIn,
    path: '/account',
    icon: AppIcon.icUserGraduate,
    selectedIcon: AppIcon.icUserGraduate,
    tooltip: 'Account',
    label: 'Account',
    view: const SignInScreen(),
  );

  static final items = <HomeNavigationItem>[
    tutors,
    schedule,
    history,
    courses,
    account,
  ];
}

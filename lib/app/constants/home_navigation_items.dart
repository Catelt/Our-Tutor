import '../features/account/view/account_screen.dart';
import '../features/course/presentation/view/courses_screen.dart';
import '../features/history/presentation/view/history_screen.dart';
import '../features/home/data/home_navigation_item.dart';
import '../features/schedule/presentation/view/schedule_screen.dart';
import '../features/tutor/presentation/view/tutor_screen.dart';
import '../routing/app_routing.dart';
import 'app_icon.dart';

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
    route: AppRoute.account,
    path: '/account',
    icon: AppIcon.icUserGraduate,
    selectedIcon: AppIcon.icUserGraduate,
    tooltip: 'Account',
    label: 'Account',
    view: const AccountScreen(),
  );

  static final items = <HomeNavigationItem>[
    tutors,
    schedule,
    history,
    courses,
    account,
  ];
}

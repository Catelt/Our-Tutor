import '../../gen/assets.gen.dart';
import '../features/account/view/account_screen.dart';
import '../features/course/view/courses/courses_screen.dart';
import '../features/history/presentation/view/history_screen.dart';
import '../features/home/data/home_navigation_item.dart';
import '../features/schedule/presentation/view/schedule_screen.dart';
import '../features/tutor/view/tutors/tutors_screen.dart';
import '../routing/app_routing.dart';

class HomeNavigationItems {
  static final tutors = HomeNavigationItem(
    route: AppRoute.tutors,
    path: '/tutors',
    icon: Assets.images.icBoardTeacher.path,
    selectedIcon: Assets.images.icBoardTeacher.path,
    tooltip: 'Tutor',
    label: 'Tutor',
    view: const TutorsScreen(),
  );

  static final schedule = HomeNavigationItem(
    route: AppRoute.schedule,
    path: '/schedule',
    icon: Assets.images.icScheduleCheck.path,
    selectedIcon: Assets.images.icScheduleCheck.path,
    tooltip: 'Schedule',
    label: 'Schedule',
    view: const ScheduleScreen(),
  );

  static final history = HomeNavigationItem(
    route: AppRoute.history,
    path: '/history',
    icon: Assets.images.icHistory.path,
    selectedIcon: Assets.images.icHistory.path,
    tooltip: 'History',
    label: 'History',
    view: const HistoryScreen(),
  );

  static final courses = HomeNavigationItem(
    route: AppRoute.courses,
    path: '/courses',
    icon: Assets.images.icGraduationCap.path,
    selectedIcon: Assets.images.icGraduationCap.path,
    tooltip: 'Course',
    label: 'Course',
    view: const CoursesScreen(),
  );

  static final account = HomeNavigationItem(
    route: AppRoute.account,
    path: '/account',
    icon: Assets.images.icUserGraduate.path,
    selectedIcon: Assets.images.icUserGraduate.path,
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
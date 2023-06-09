import '../../gen/assets.gen.dart';
import '../features/account/view/account_screen.dart';
import '../features/course/view/courses/courses_screen.dart';
import '../features/history/view/history_screen.dart';
import '../features/home/data/home_navigation_item.dart';
import '../features/schedule/view/schedule_screen.dart';
import '../features/tutor/view/tutors/tutors_screen.dart';
import '../localization/localization_utils.dart';
import '../routing/app_routing.dart';

class HomeNavigationItems {
  static final tutors = HomeNavigationItem(
    route: AppRoute.tutors,
    path: '/tutors',
    icon: Assets.images.icBoardTeacher.path,
    selectedIcon: Assets.images.icBoardTeacher.path,
    view: const TutorsScreen(),
  );

  static final schedule = HomeNavigationItem(
    route: AppRoute.schedule,
    path: '/schedule',
    icon: Assets.images.icScheduleCheck.path,
    selectedIcon: Assets.images.icScheduleCheck.path,
    view: const ScheduleScreen(),
  );

  static final history = HomeNavigationItem(
    route: AppRoute.history,
    path: '/history',
    icon: Assets.images.icHistory.path,
    selectedIcon: Assets.images.icHistory.path,
    view: const HistoryScreen(),
  );

  static final courses = HomeNavigationItem(
    route: AppRoute.courses,
    path: '/courses',
    icon: Assets.images.icGraduationCap.path,
    selectedIcon: Assets.images.icGraduationCap.path,
    view: const CoursesScreen(),
  );

  static final account = HomeNavigationItem(
    route: AppRoute.account,
    path: '/account',
    icon: Assets.images.icUserGraduate.path,
    selectedIcon: Assets.images.icUserGraduate.path,
    view: const AccountScreen(),
  );

  static final items = <HomeNavigationItem>[
    tutors,
    schedule,
    history,
    courses,
    account,
  ];

  static String getLabel(String name) {
    if (name == AppRoute.tutors.name) {
      return S.text.navigation_tutor;
    }
    if (name == AppRoute.schedule.name) {
      return S.text.navigation_schedule;
    }
    if (name == AppRoute.history.name) {
      return S.text.navigation_history;
    }
    if (name == AppRoute.courses.name) {
      return S.text.navigation_course;
    }
    if (name == AppRoute.account.name) {
      return S.text.navigation_account;
    }
    return "";
  }
}

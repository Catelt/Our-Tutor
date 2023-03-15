import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:our_tutor/app/constants/app_icon.dart';
import 'package:our_tutor/app/constants/app_size.dart';
import 'package:our_tutor/app/features/home/custom_navigation_item.dart';
import 'package:our_tutor/app/routing/app_routing.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: _calculateSelectedIndex(context),
        onTap: onTap,
        items: [
          CustomNavigationItem(
            asset: AppIcon.icBoardTeacher,
            title: 'Tutor',
            color: color,
          ),
          CustomNavigationItem(
            asset: AppIcon.icScheduleCheck,
            title: 'Schedule',
            color: color,
          ),
          CustomNavigationItem(
            asset: AppIcon.icHistory,
            title: 'History',
            color: color,
          ),
          CustomNavigationItem(
            asset: AppIcon.icGraduationCap,
            title: 'Course',
            color: color,
          ),
          CustomNavigationItem(
            asset: AppIcon.icUserGraduate,
            title: 'Account',
            color: color,
          ),
        ],
      ),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final route = GoRouter.of(context);
    final location = route.location;
    print(location);
    if (location.startsWith('/tutors')) {
      return 0;
    }
    if (location.startsWith('/courses')) {
      return 1;
    }
    if (location.startsWith('/courses')) {
      return 2;
    }
    if (location.startsWith('/courses')) {
      return 3;
    }
    if (location.startsWith('/signIn')) {
      return 4;
    }
    return 0;
  }

  void onTap(int value) {
    switch (value) {
      case 0:
        return context.goNamed(AppRoute.tutors.name);
      case 1:
        return context.goNamed(AppRoute.courses.name);
      case 2:
        return context.goNamed(AppRoute.courses.name);
      case 3:
        return context.goNamed(AppRoute.courses.name);
      case 4:
        return context.goNamed(AppRoute.signIn.name);
      default:
        return context.goNamed(AppRoute.tutors.name);
    }
  }
}

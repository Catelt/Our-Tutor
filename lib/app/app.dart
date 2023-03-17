import 'package:flutter/material.dart';
import 'package:our_tutor/app/constants/fake_tutors.dart';
import 'package:our_tutor/app/features/course/presentation/view/course_detail_screen.dart';
import 'package:our_tutor/app/features/course/presentation/view/courses_screen.dart';
import 'package:our_tutor/app/features/course/presentation/view/topic_detail_screen.dart';
import 'package:our_tutor/app/features/history/presentation/view/history_screen.dart';
import 'package:our_tutor/app/features/schedule/presentation/view/schedule_screen.dart';
import 'package:our_tutor/app/features/tutor/presentation/view/tutor_detail_screen.dart';
import 'package:our_tutor/app/features/tutor/presentation/view/tutor_screen.dart';
import 'package:our_tutor/app/routing/app_routing.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = goRouter;
    // return MaterialApp.router(
    //   debugShowCheckedModeBanner: false,
    //   routerConfig: router,
    //   theme: ThemeData(
    //     useMaterial3: true,
    //     colorSchemeSeed: const Color(0xFF13B9FF),
    //   ),
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF13B9FF),
      ),
      home: const TopicDetailScreen(),
    );
  }
}

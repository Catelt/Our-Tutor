import 'package:flutter/material.dart';
import 'package:our_tutor/app/constants/fake_tutors.dart';
import 'package:our_tutor/app/features/tutor/presentation/view/tutor_detail_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF13B9FF),
      ),
      home: TutorDetailScreen(item: fakeTutors[0]),
    );
  }
}

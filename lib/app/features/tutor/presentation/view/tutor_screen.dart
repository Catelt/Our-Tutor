import 'package:flutter/material.dart';
import 'package:our_tutor/app/constants/app_size.dart';
import 'package:our_tutor/app/constants/fake_tutors.dart';
import 'package:our_tutor/app/features/tutor/presentation/widgets/widget.dart';

class TutorScreen extends StatelessWidget {
  const TutorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: fakeTutors.length,
        itemBuilder: (context, index) {
          return TutorItem(item: fakeTutors[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return gapH12;
        },
      ),
    );
  }
}

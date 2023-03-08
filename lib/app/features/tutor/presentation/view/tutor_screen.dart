import 'package:flutter/material.dart';
import 'package:our_tutor/app/constants/app_size.dart';
import 'package:our_tutor/app/features/tutor/presentation/widgets/widget.dart';

class TutorScreen extends StatelessWidget {
  const TutorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const TutorItem();
        },
        separatorBuilder: (BuildContext context, int index) {
          return gapH12;
        },
      ),
    );
  }
}

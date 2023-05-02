import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../../constants/base_style.dart';
import '../../../network/model/booking/class_review.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({super.key, required this.review});

  final MClassReview review;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RichText(
        text: TextSpan(
          style: BaseTextStyle.body2(),
          children: [
            TextSpan(text: "Lesson status: ${review.lessonStatus.status}\n"),
            TextSpan(
                text:
                    "Book: ${review.book} - Unit: ${review.unit} - Lesson: ${review.lesson} - Page: ${review.page}\n"),
            TextSpan(
                text:
                    "Behavior (${getStar(review.behaviorRating)}): ${review.behaviorComment} \n"),
            TextSpan(
                text:
                    "Listening (${getStar(review.listeningRating)}): ${review.listeningComment} \n"),
            TextSpan(
                text:
                    "Speaking (${getStar(review.speakingRating)}): ${review.speakingComment} \n"),
            TextSpan(
                text:
                    "Vocabulary (${getStar(review.vocabularyRating)}): ${review.vocabularyComment} \n"),
            TextSpan(text: "Homework: ${review.homeworkComment} \n"),
            TextSpan(text: "Homework: ${review.overallComment} \n"),
          ],
        ),
      ),
    );
  }

  String getStar(double number) {
    var result = ' ';
    for (var i = 0; i < number; i++) {
      result += '⭐ ';
    }
    return result;
  }
}

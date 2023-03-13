import 'package:flutter/material.dart';
import 'package:our_tutor/app/common_widgets/common_widgets.dart';
import 'package:our_tutor/app/constants/app_size.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key, this.onPress});

  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Sizes.p8),
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.16),
                spreadRadius: 0,
                blurRadius: 5,
                offset: const Offset(0, 2))
          ]),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(Sizes.p8),
            child: Image.asset(
              'assets/images/course_sample.png',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: Sizes.p8, vertical: Sizes.p12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Life in the Internet Age',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                gapH8,
                Text(
                  'Let\'s discuss how technology is changing the way we live',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                gapH16,
                if (onPress != null)
                  Container(
                    padding: EdgeInsets.only(bottom: Sizes.p12),
                    width: double.infinity,
                    child: PrimaryButton(
                      text: 'Discover',
                      onPressed: onPress,
                    ),
                  ),
                if (onPress == null)
                  Text(
                    "Intermediate • 9  Lessons",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../constants/app_size.dart';
import '../../../localization/localization_utils.dart';
import '../../../network/model/course/course.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key, this.onPress, required this.course});

  final void Function()? onPress;
  final MCourse course;

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
            child: CachedNetworkImage(
              imageUrl: course.imageUrl,
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
                  course.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                gapH8,
                Text(
                  course.description,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                gapH16,
                if (onPress != null)
                  Container(
                    padding: EdgeInsets.only(bottom: Sizes.p12),
                    width: double.infinity,
                    child: PrimaryButton(
                      text: S.text.discover,
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

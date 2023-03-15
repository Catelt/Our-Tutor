import 'package:flutter/material.dart';
import 'package:our_tutor/app/common_widgets/common_widgets.dart';
import 'package:our_tutor/app/constants/app_icon.dart';
import 'package:our_tutor/app/constants/app_size.dart';
import 'package:our_tutor/app/constants/countries.dart';
import 'package:our_tutor/app/features/schedule/presentation/widgets/request_lesson.dart';

class ScheduleItem extends StatelessWidget {
  const ScheduleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.16),
            spreadRadius: 0,
            blurRadius: 5,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Column(
        children: [
          const Text(
            'Wed, 15 Mar 23',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Text(
            '1 lesson',
            style: TextStyle(fontSize: 14),
          ),
          gapH16,
          infoTutor(context),
          gapH12,
          infoLesson()
        ],
      ),
    );
  }

  Widget infoTutor(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 34,
            backgroundImage: Image.asset('assets/image_tutor/sample.jpg').image,
          ),
          gapW16,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Keegan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  SvgWidget(assetName: vn.imageUrl, size: 18),
                  gapW4,
                  Text(
                    vn.name,
                    style: const TextStyle(fontSize: 16),
                  )
                ],
              ),
              Row(
                children: [
                  const SvgWidget(
                    assetName: AppIcon.icMessage,
                    size: 14,
                    // color: Theme.of(context).colorScheme.primary,
                  ),
                  gapW4,
                  Text(
                    'Direct Message',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget infoLesson() {
    return Container(
      padding: const EdgeInsets.all(Sizes.p12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          const Text('Lesson Time: 17:00 - 21:55'),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) => lessonItem(),
            separatorBuilder: (context, index) => gapH4,
          ),
          gapH12,
          const RequestLessonWidget(),
        ],
      ),
    );
  }

  Widget lessonItem() {
    return Row(
      children: [
        const Text('Session 1: 17:00 - 17:25'),
        const Spacer(),
        Visibility(
          child: Container(
            width: 90,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.red, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SvgWidget(
                  assetName: AppIcon.icCloseSquare,
                  size: 14,
                  color: Colors.red,
                ),
                gapW4,
                Text(
                  'Cancel',
                  style: TextStyle(fontSize: 14, color: Colors.red),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

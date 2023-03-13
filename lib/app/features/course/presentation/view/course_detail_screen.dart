import 'package:flutter/material.dart';
import 'package:our_tutor/app/common_widgets/common_widgets.dart';
import 'package:our_tutor/app/constants/app_icon.dart';
import 'package:our_tutor/app/constants/app_size.dart';
import 'package:our_tutor/app/features/course/presentation/widgets/course_item.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
        child: ListView(
          children: [
            CourseItem(
              onPress: () {},
            ),
            gapH12,
            detailWidget(title: "Overview", child: overviewWidget()),
            detailWidget(
                title: "Experience Level",
                child: Row(
                  children: [
                    SvgWidget(
                      assetName: AppIcon.icUserGroup,
                      size: 20,
                    ),
                    gapW8,
                    Text(
                      'Intermediate',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                )),
            detailWidget(
                title: "Course Length",
                child: Row(
                  children: [
                    SvgWidget(
                      assetName: AppIcon.icBook,
                      size: 20,
                    ),
                    gapW8,
                    Text(
                      '9 topics',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                )),
            detailWidget(
                title: "Suggested Tutors",
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) =>
                      itemTopic(context, (index + 1).toString(), "Coding"),
                  separatorBuilder: (context, index) => gapH8,
                )),
            detailWidget(
                title: "Suggested Tutors",
                child: Row(
                  children: [itemSuggestedTutor(context)],
                ))
          ],
        ),
      ),
    );
  }

  Widget itemTopic(BuildContext context, String index, String title) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Sizes.p8),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${index}.',
            style: TextStyle(fontSize: 16),
          ),
          Text(title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }

  Widget itemSuggestedTutor(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Text(
        'Keegan',
        style: TextStyle(fontSize: 16),
      ),
      gapW4,
      Text(
        "More info",
        style: TextStyle(
            fontSize: 14, color: Theme.of(context).colorScheme.primary),
      )
    ]);
  }

  Widget detailWidget({required String title, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: Sizes.p4, horizontal: Sizes.p12),
          child: child,
        ),
        gapH8
      ],
    );
  }

  Widget overviewWidget() {
    return Column(
      children: [
        titleInOverviewWidget('Why take this course'),
        Padding(
          padding: EdgeInsets.only(left: Sizes.p16),
          child: Text(
              'Our world is rapidly changing thanks to new technology, and the vocabulary needed to discuss modern life is evolving almost daily. In this course you will learn the most up-to-date terminology from expertly crafted lessons as well from your native-speaking tutor.',
              style: TextStyle(fontSize: 14, color: Colors.grey)),
        ),
        titleInOverviewWidget('What will you be able to do'),
        Padding(
          padding: EdgeInsets.only(left: Sizes.p16),
          child: Text(
              'You will learn vocabulary related to timely topics like remote work, artificial intelligence, online privacy, and more. In addition to discussion questions, you will practice intermediate level speaking tasks such as using data to describe trends.',
              style: TextStyle(fontSize: 14, color: Colors.grey)),
        ),
      ],
    );
  }

  Widget titleInOverviewWidget(String title) {
    return Row(children: [
      SvgWidget(
        assetName: AppIcon.icCircleQuestion,
        size: 20,
        color: Colors.red,
      ),
      gapW8,
      Text(
        title,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
      )
    ]);
  }
}

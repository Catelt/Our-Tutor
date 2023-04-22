import 'package:flutter/material.dart';
import '../../../../common_widgets/common_widgets.dart';
import '../../../../common_widgets/expand_container.dart';
import '../../../../constants/app_icon.dart';
import '../../../../constants/app_size.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key});

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
          const InfoTutorWidget(),
          gapH12,
          infoLesson(context),
          gapH12,
          requestWidget(context),
          reviewWidget(context),
          ratingAndReportWidget(context)
        ],
      ),
    );
  }

  Widget infoLesson(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(Sizes.p12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text("Lesson Time: 17:00 - 21:55", style: TextStyle(fontSize: 20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).colorScheme.primary),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgWidget(
                  assetName: AppIcon.icPlaySquare,
                  size: 14,
                  color: Colors.white,
                ),
                gapW4,
                Text(
                  "Record",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget requestWidget(BuildContext context) {
    return ExpandContainer(
        title: (expanded) => Container(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.p8),
              height: 46,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8))),
              child: titleWidget(expanded, 'Request for lesson'),
            ),
        body: Container(
          padding: const EdgeInsets.all(Sizes.p16),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) => itemRequest(),
            separatorBuilder: (context, index) => gapH8,
          ),
        ));
  }

  Widget reviewWidget(BuildContext context) {
    return ExpandContainer(
        title: (expanded) => Container(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.p8),
              height: 46,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(color: Colors.grey),
                  bottom: expanded
                      ? BorderSide.none
                      : BorderSide(color: Colors.grey),
                ),
              ),
              child: titleWidget(expanded, 'Review from tutor'),
            ),
        body: Container(
          padding: const EdgeInsets.all(Sizes.p16),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
          child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) => itemReview(),
            separatorBuilder: (context, index) => gapH8,
          ),
        ));
  }

  Widget ratingAndReportWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p8),
      height: 46,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
      child: Row(
        children: [
          Text('Add a Rating',
              style: TextStyle(
                  fontSize: 14, color: Theme.of(context).colorScheme.primary)),
          Spacer(),
          Text('Report',
              style: TextStyle(
                  fontSize: 14, color: Theme.of(context).colorScheme.primary)),
        ],
      ),
    );
  }

  Widget titleWidget(bool expanded, String title) {
    return Row(children: [
      Text(
        title,
        style: TextStyle(
          fontSize: 14,
        ),
      ),
      const Spacer(),
      if (expanded)
        const Icon(
          Icons.keyboard_arrow_down,
          size: 12,
        )
      else
        const Icon(
          Icons.arrow_forward_ios,
          size: 12,
        ),
    ]);
  }

  Widget itemRequest() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Lesson status: Completed",
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }

  Widget itemReview() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Session 1: 01:00 - 01:25",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Text(
          "Lesson status: Completed",
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }
}

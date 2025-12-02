import 'package:flutter/material.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../common_widgets/expand_container.dart';
import '../../../constants/app_size.dart';
import '../../../localization/localization_utils.dart';
import '../../../network/model/booking/booking.dart';
import '../../../network/model/tutor/tutor.dart';
import '../../../utils/extension/datetime.dart';
import 'review_item.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key, required this.booking});

  final MBooking booking;

  @override
  Widget build(BuildContext context) {
    final date = DateTime.parse(
      booking.scheduleDetailInfo.scheduleInfo?.date ?? "",
    );
    return Container(
      padding: const EdgeInsets.all(Sizes.p12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Theme.of(
              context,
            ).colorScheme.primary.withValues(alpha: 0.16),
            spreadRadius: 0,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            XDateFormat().date.format(date),
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          // const Text(
          //   '1 lesson',
          //   style: TextStyle(fontSize: 14),
          // ),
          gapH16,
          InfoTutorWidget(
            tutor:
                booking.scheduleDetailInfo.scheduleInfo?.tutorInfo ?? MTutor(),
          ),
          gapH12,
          infoLesson(context),
          gapH12,
          requestWidget(context),
          reviewWidget(context),
          ratingAndReportWidget(context),
        ],
      ),
    );
  }

  Widget infoLesson(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(Sizes.p12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            S.text.history_lesson_time(
              "${booking.startTime} - ${booking.endTime}",
            ),
            style: TextStyle(fontSize: 20),
          ),
          Visibility(
            visible: booking.recordUrl.isNotEmpty,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgWidget(
                    assetName: Assets.images.icPlaySquare.path,
                    size: 14,
                  ),
                  gapW4,
                  Text(S.text.record, style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget requestWidget(BuildContext context) {
    final String review = booking.studentRequest;
    final canExpand = review.isNotEmpty;
    return ExpandContainer(
      canExpand: canExpand,
      title:
          (expanded) => Container(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p8),
            height: 46,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: titleWidget(
              expanded,
              canExpand ? S.text.history_request : S.text.history_no_request,
              canExpand: canExpand,
            ),
          ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(Sizes.p16),
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
        child: Text(review, style: TextStyle(fontSize: 14)),
      ),
    );
  }

  Widget reviewWidget(BuildContext context) {
    final review = booking.classReview;
    final canExpand = review != null;
    return ExpandContainer(
      canExpand: canExpand,
      title:
          (expanded) => Container(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p8),
            height: 46,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              border: Border(
                top: BorderSide(color: Colors.grey),
                bottom:
                    expanded ? BorderSide.none : BorderSide(color: Colors.grey),
              ),
            ),
            child: titleWidget(
              expanded,
              canExpand ? S.text.history_review : S.text.history_no_review,
              canExpand: canExpand,
            ),
          ),
      body: Container(
        padding: const EdgeInsets.all(Sizes.p16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        child: canExpand ? ReviewItem(review: review) : null,
      ),
    );
  }

  Widget ratingAndReportWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p8),
      height: 46,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Row(
        children: [
          Text(
            S.text.add_a_rating,
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Spacer(),
          Text(
            S.text.report,
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }

  Widget titleWidget(bool expanded, String title, {bool canExpand = false}) {
    return Row(
      children: [
        Text(title, style: TextStyle(fontSize: 14)),
        const Spacer(),
        Visibility(
          visible: canExpand,
          child:
              expanded
                  ? const Icon(Icons.keyboard_arrow_down, size: 12)
                  : const Icon(Icons.arrow_forward_ios, size: 12),
        ),
      ],
    );
  }
}

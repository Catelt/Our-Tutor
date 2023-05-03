import 'package:flutter/material.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../constants/app_size.dart';
import '../../../network/model/booking/booking.dart';
import '../../../network/model/booking/bookings.dart';
import '../../../network/model/tutor/tutor.dart';
import '../../../utils/extension/datetime.dart';
import 'request_lesson.dart';

class ScheduleItem extends StatelessWidget {
  const ScheduleItem({super.key, required this.bookings});

  final MBookings bookings;

  @override
  Widget build(BuildContext context) {
    final time = DateTime.fromMillisecondsSinceEpoch(
        bookings.list.first.scheduleDetailInfo.startPeriodTimestamp.round());
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
          Text(
            XDateFormat().date.format(time),
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            '${bookings.list.length} lesson',
            style: TextStyle(fontSize: 14),
          ),
          gapH16,
          InfoTutorWidget(
            tutor: bookings
                    .list.first.scheduleDetailInfo.scheduleInfo?.tutorInfo ??
                MTutor(),
          ),
          gapH12,
          infoLesson()
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
          Text(
              'Lesson Time: ${bookings.list.first.scheduleDetailInfo.startPeriod} - ${bookings.list.last.scheduleDetailInfo.endPeriod}'),
          Visibility(
            visible: bookings.list.length > 1,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: bookings.list.length,
              itemBuilder: (context, index) =>
                  lessonItem(index, bookings.list[index]),
              separatorBuilder: (context, index) => gapH4,
            ),
          ),
          gapH12,
          const RequestLessonWidget(),
        ],
      ),
    );
  }

  Widget lessonItem(int index, MBooking item) {
    return Row(
      children: [
        Text(
            'Session ${index + 1}: ${item.scheduleDetailInfo.startPeriod} -  ${item.scheduleDetailInfo.endPeriod}'),
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
              children: [
                SvgWidget(
                  assetName: Assets.images.icCloseSquare.path,
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

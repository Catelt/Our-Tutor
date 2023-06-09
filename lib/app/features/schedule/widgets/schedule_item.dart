import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../constants/app_size.dart';
import '../../../localization/localization_utils.dart';
import '../../../network/model/booking/booking.dart';
import '../../../network/model/booking/bookings.dart';
import '../../../network/model/tutor/tutor.dart';
import '../../../routing/coordinator.dart';
import '../../../utils/extension/datetime.dart';
import '../cubit/schedule_cubit.dart';
import 'cancel_booking_widget.dart';
import 'request_lesson.dart';

class ScheduleItem extends StatelessWidget {
  const ScheduleItem(
      {super.key, required this.bookings, this.showGoClass = false});

  final MBookings bookings;
  final bool showGoClass;

  @override
  Widget build(BuildContext context) {
    final time = DateTime.fromMillisecondsSinceEpoch(
        bookings.list.first.scheduleDetailInfo.startPeriodTimestamp.round());
    return Container(
      padding: const EdgeInsets.all(Sizes.p12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
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
            '${bookings.list.length} ${S.text.lesson}',
            style: TextStyle(fontSize: 14),
          ),
          gapH16,
          InfoTutorWidget(
            tutor: bookings
                    .list.first.scheduleDetailInfo.scheduleInfo?.tutorInfo ??
                MTutor(),
          ),
          gapH12,
          infoLesson(context),
          Visibility(
              visible: showGoClass,
              child: SizedBox(
                width: double.infinity,
                child: PrimaryButton(
                  text: S.text.common_go_meeting,
                  onPressed: () {
                    XCoordinator().showVideoCall(
                        bookings.list.first.id, bookings.list.first);
                  },
                ),
              ))
        ],
      ),
    );
  }

  Widget infoLesson(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Row(
            children: [
              Text(S.text.history_lesson_time(
                  '${bookings.list.first.startTime} - ${bookings.list.last.endTime}')),
              Spacer(),
              Visibility(
                  visible: bookings.list.length == 1 &&
                      bookings.list.first.canCancelBooking,
                  child: buttonCancel(context, bookings.list.first))
            ],
          ),
          Visibility(
            visible: bookings.list.length > 1,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: bookings.list.length,
              itemBuilder: (context, index) =>
                  lessonItem(context, index, bookings.list[index]),
              separatorBuilder: (context, index) => gapH4,
            ),
          ),
          gapH12,
          const RequestLessonWidget(),
        ],
      ),
    );
  }

  Widget lessonItem(BuildContext context, int index, MBooking item) {
    return Row(
      children: [
        Text(S.text.schedule_session_time(
            "${index + 1}: ${item.startTime} -  ${item.endTime}")),
        const Spacer(),
        Visibility(
          visible: item.canCancelBooking,
          child: buttonCancel(context, item),
        ),
      ],
    );
  }

  Widget buttonCancel(BuildContext context, MBooking booking) {
    return GestureDetector(
      onTap: () async {
        XBottomSheet.show(context,
            isDismissible: false,
            child: CancelBookingWidget(
              booking: booking,
              callback: () {
                context.read<ScheduleCubit>().resetPage();
              },
            ));
      },
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
              S.text.common_cancel,
              style: TextStyle(fontSize: 14, color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}

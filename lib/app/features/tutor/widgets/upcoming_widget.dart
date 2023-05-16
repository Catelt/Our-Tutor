import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../constants/app_size.dart';
import '../../../constants/base_style.dart';
import '../../../localization/localization_utils.dart';
import '../../../network/model/booking/booking.dart';
import '../../../routing/coordinator.dart';
import '../../../utils/extension/datetime.dart';

class UpComingWidget extends StatefulWidget {
  const UpComingWidget({super.key, required this.booking});
  final MBooking booking;
  @override
  State<UpComingWidget> createState() => _UpComingWidgetState();
}

class _UpComingWidgetState extends State<UpComingWidget> {
  Timer? countdownTimer;
  late Duration myDuration;

  @override
  void initState() {
    super.initState();
    setCountDown();
    startTimer();
  }

  void startTimer() {
    countdownTimer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {
        setCountDown();
      });
    });
  }

  void setCountDown() {
    final timeStart = DateTime.fromMillisecondsSinceEpoch(
        widget.booking.scheduleDetailInfo.startPeriodTimestamp.round());
    final now = DateTime.now();
    myDuration = Duration(seconds: timeStart.difference(now).inSeconds.abs());
  }

  @override
  void dispose() {
    super.dispose();
    countdownTimer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.booking.id.isNotEmpty,
      child: Column(
        children: [
          gapH16,
          Text(
            S.text.tutors_up_coming,
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          gapH4,
          Text(
            "${XDateFormat().date.format(widget.booking.getStartTime())} ${widget.booking.startTime} - ${widget.booking.endTime}",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
              "(${S.text.up_coming_start} ${(myDuration.inHours).toString().padLeft(2, '0')}:${(myDuration.inMinutes % 60).toString().padLeft(2, '0')}:${(myDuration.inSeconds % 60).toString().padLeft(2, '0')})",
              style: BaseTextStyle.heading5().copyWith(color: Colors.yellow)),
          gapH8,
          GestureDetector(
            onTap: () {
              XCoordinator().showVideoCall(widget.booking.id, widget.booking);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.p20, vertical: Sizes.p4),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgWidget(
                    assetName: Assets.images.icTivi.path,
                    size: 16,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  gapW8,
                  Text(
                    S.text.enter_lesson_room,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          gapH8,
        ],
      ),
    );
  }
}

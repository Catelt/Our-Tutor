import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common_widgets/common_widgets.dart';
import '../../../../../constants/app_size.dart';
import '../../../../../constants/base_style.dart';
import '../../../../../dialogs/toast_wrapper.dart';
import '../../../../../localization/localization_utils.dart';
import '../../../../../network/model/schedule/schedule_info.dart';
import '../../../../../utils/extension/datetime.dart';
import '../cubit/booking_cubit.dart';

class BookingWidget extends StatelessWidget {
  const BookingWidget({super.key, required this.schedule, this.callback});
  final MScheduleInfo schedule;
  final void Function()? callback;

  @override
  Widget build(BuildContext context) {
    final time =
        DateTime.fromMillisecondsSinceEpoch(schedule.startTimestamp.round());
    return BlocProvider(
      create: (context) => BookingCubit(schedule.scheduleDetails.first.id),
      child: BlocListener<BookingCubit, BookingState>(
          listenWhen: (previous, current) => previous.handle != current.handle,
          listener: (context, state) {
            if (state.handle.isCompleted && state.handle.data == true) {
              XToast.success(S.text.common_success);
              callback?.call();
              Navigator.pop(context);
            } else if (!state.handle.isLoading) {
              XToast.error(S.text.error_somethingWrongTryAgain);
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: Sizes.p12, horizontal: Sizes.p16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    S.text.booking_title,
                    style: BaseTextStyle.heading4(),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  S.text.booking_time,
                  style: BaseTextStyle.body1(),
                ),
                Text(
                  "${XDateFormat().date.format(time)}  ${schedule.startTime} - ${schedule.endTime}",
                  style: BaseTextStyle.body2(),
                ),
                Text(
                  S.text.booking_note,
                  style: BaseTextStyle.body1(),
                ),
                gapH8,
                BlocBuilder<BookingCubit, BookingState>(
                  buildWhen: (previous, current) =>
                      previous.content != current.content,
                  builder: (context, state) {
                    return TextFieldCustom(
                      hint: S.text.password_hint,
                      text: state.content,
                      maxLines: 4,
                      onChange: context.read<BookingCubit>().onChangeContext,
                    );
                  },
                ),
                gapH8,
                BlocBuilder<BookingCubit, BookingState>(
                  buildWhen: (previous, current) =>
                      previous.handle != current.handle,
                  builder: (context, state) {
                    return Row(
                      children: [
                        Expanded(
                          child: PrimaryButton(
                            text: S.text.common_cancel,
                            onPressed: state.handle.isLoading
                                ? null
                                : () {
                                    Navigator.pop(context);
                                  },
                          ),
                        ),
                        gapW8,
                        Expanded(
                          child: PrimaryButton(
                            text: S.text.book_button,
                            isLoading: state.handle.isLoading,
                            onPressed: context.read<BookingCubit>().submit,
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          )),
    );
  }
}

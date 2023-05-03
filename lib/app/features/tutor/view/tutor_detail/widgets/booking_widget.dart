import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common_widgets/common_widgets.dart';
import '../../../../../constants/app_size.dart';
import '../../../../../constants/base_style.dart';
import '../../../../../dialogs/toast_wrapper.dart';
import '../../../../../localization/localization_utils.dart';
import '../../../../../network/model/common/default_form.dart';
import '../../../../../network/model/schedule/schedule_info.dart';
import '../../../../../utils/extension/datetime.dart';
import '../cubit/booking_cubit.dart';

class BookingWidget extends StatelessWidget {
  const BookingWidget({super.key, required this.schedule});
  final MScheduleInfo schedule;

  @override
  Widget build(BuildContext context) {
    print(schedule.id);
    print("-----");
    final time =
        DateTime.fromMillisecondsSinceEpoch(schedule.startTimestamp.round());
    return BlocProvider(
      create: (context) => BookingCubit(schedule.id),
      child: BlocListener<BookingCubit, BookingState>(
          listenWhen: (previous, current) => previous.handle != current.handle,
          listener: (context, state) {
            if (state.handle.isCompleted && state.handle.data == true) {
              XToast.success(S.text.common_success);
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
                    "Booking Detail",
                    style: BaseTextStyle.heading4(),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  "Booking Time",
                  style: BaseTextStyle.body1(),
                ),
                Text(
                  "${XDateFormat().date.format(time)}  ${schedule.startTime} - ${schedule.endTime}",
                  style: BaseTextStyle.body2(),
                ),
                Text(
                  "Note",
                  style: BaseTextStyle.body1(),
                ),
                gapH8,
                BlocBuilder<BookingCubit, BookingState>(
                  buildWhen: (previous, current) =>
                      previous.content != current.content ||
                      previous.isPress != current.isPress,
                  builder: (context, state) {
                    return TextFieldCustom(
                      hint: S.text.password_hint,
                      text: state.content.value,
                      maxLines: 4,
                      onChange: context.read<BookingCubit>().onChangeContext,
                      errorText: state.isPress
                          ? state.content.error?.messageDefaultForm
                          : null,
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

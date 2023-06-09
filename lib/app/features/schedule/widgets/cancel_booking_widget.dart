import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../constants/app_size.dart';
import '../../../constants/base_style.dart';
import '../../../dialogs/toast_wrapper.dart';
import '../../../localization/localization_utils.dart';
import '../../../network/model/booking/booking.dart';
import '../../../utils/extension/datetime.dart';
import '../cubit/cancel_booking_cubit.dart';

class CancelBookingWidget extends StatelessWidget {
  const CancelBookingWidget({super.key, required this.booking, this.callback});
  final MBooking booking;
  final void Function()? callback;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CancelBookingCubit(id: booking.id),
      child: BlocListener<CancelBookingCubit, CancelBookingState>(
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
                    S.text.cancel_booking_title,
                    style: BaseTextStyle.heading4(),
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  child: Text(
                    S.text.cancel_booking_lesson_time,
                    style: BaseTextStyle.body1(),
                  ),
                ),
                Center(
                  child: Text(
                    "${XDateFormat().date.format(booking.getStartTime())} ${booking.startTime} - ${booking.endTime}",
                    style: BaseTextStyle.body2(),
                  ),
                ),
                Text(
                  S.text.cancel_booking_reason,
                  style: BaseTextStyle.body1(),
                ),
                gapH8,
                BlocBuilder<CancelBookingCubit, CancelBookingState>(
                  buildWhen: (previous, current) =>
                      previous.content != current.content,
                  builder: (context, state) {
                    return TextFieldCustom(
                      hint: S.text.password_hint,
                      text: state.content,
                      maxLines: 4,
                      onChange:
                          context.read<CancelBookingCubit>().onChangeContext,
                    );
                  },
                ),
                gapH8,
                BlocBuilder<CancelBookingCubit, CancelBookingState>(
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
                            text: S.text.common_submit,
                            isLoading: state.handle.isLoading,
                            onPressed:
                                context.read<CancelBookingCubit>().submit,
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

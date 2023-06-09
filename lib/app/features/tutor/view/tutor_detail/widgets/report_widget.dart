import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common_widgets/common_widgets.dart';
import '../../../../../constants/app_size.dart';
import '../../../../../constants/base_style.dart';
import '../../../../../dialogs/toast_wrapper.dart';
import '../../../../../localization/localization_utils.dart';
import '../../../../../network/model/common/default_form.dart';
import '../../../../../network/model/tutor/tutor.dart';
import '../cubit/report_cubit.dart';

class ReportWidget extends StatelessWidget {
  const ReportWidget({super.key, required this.tutor});
  final MTutor tutor;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReportCubit(id: tutor.id),
      child: BlocListener<ReportCubit, ReportState>(
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
              children: [
                Text(
                  S.text.report_title(tutor.name),
                  style: BaseTextStyle.heading5(),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.info,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    gapW8,
                    Text(
                      S.text.report_subtitle,
                      style: BaseTextStyle.body2(),
                    )
                  ],
                ),
                gapH8,
                BlocBuilder<ReportCubit, ReportState>(
                  buildWhen: (previous, current) =>
                      previous.content != current.content ||
                      previous.isPress != current.isPress,
                  builder: (context, state) {
                    return TextFieldCustom(
                      hint: S.text.password_hint,
                      text: state.content.value,
                      maxLines: 4,
                      onChange: context.read<ReportCubit>().onChangeContext,
                      errorText: state.isPress
                          ? state.content.error?.messageDefaultForm
                          : null,
                    );
                  },
                ),
                gapH8,
                BlocBuilder<ReportCubit, ReportState>(
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
                            onPressed: context.read<ReportCubit>().submit,
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_size.dart';
import '../../../../constants/base_style.dart';
import '../../../../dialogs/toast_wrapper.dart';
import '../../../../localization/localization_utils.dart';
import '../../models/models.dart';
import '../../widgets/text_field_widget.dart';
import 'cubit/forgot_password_cubit.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordCubit(),
      child: BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
        listenWhen: (previous, current) => previous.handle != current.handle,
        listener: (context, state) {
          if (state.handle.isError) {
            if (state.handle.message?.contains("Email") == true) {
              XToast.error(state.handle.message);
            } else {
              XToast.error(S.text.error_somethingWrongTryAgain);
            }
          }
        },
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                leading: DefaultAppBar.defaultLeading(),
              ),
              body: Center(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
                    child: state.handle.isCompleted ? _sendSuccess() : _body()),
              ));
        },
      ),
    );
  }

  Widget _body() => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            S.text.forget_password_title,
            style: BaseTextStyle.heading1(),
          ),
          gapH8,
          Text(
            S.text.forget_password_subtitle,
            textAlign: TextAlign.center,
            style: BaseTextStyle.body1(),
          ),
          gapH20,
          SizedBox(
              width: double.infinity,
              child: Text(S.text.email, style: TextStyle(fontSize: 15))),
          BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
            buildWhen: (previous, current) =>
                previous.isPress != current.isPress ||
                previous.email != current.email,
            builder: (context, state) {
              return TextFieldWidget(
                hint: S.text.email_hint,
                text: state.email.value,
                onChange: context.read<ForgotPasswordCubit>().onChangEmail,
                errorText:
                    state.isPress ? state.email.error?.messageEmail : null,
              );
            },
          ),
          gapH12,
          BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
            buildWhen: (previous, current) => previous.handle != current.handle,
            builder: (context, state) {
              return SizedBox(
                width: double.infinity,
                child: PrimaryButton(
                  text: S.text.forget_password_button,
                  isLoading: state.handle.isLoading,
                  onPressed: context.read<ForgotPasswordCubit>().forgotPassword,
                ),
              );
            },
          ),
        ],
      );

  Widget _sendSuccess() => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            S.text.forget_password_title,
            style: BaseTextStyle.heading1(),
          ),
          gapH8,
          Text(
            S.text.forget_password_subtitle_success,
            textAlign: TextAlign.center,
            style: BaseTextStyle.body1(),
          ),
        ],
      );
}

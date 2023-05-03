import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_size.dart';
import '../../../../dialogs/toast_wrapper.dart';
import '../../../../localization/localization_utils.dart';
import '../../../../network/model/common/default_form.dart';
import '../../bloc/account_cubit.dart';
import 'cubit/become_tutor_cubit.dart';

class BecomeTutorScreen extends StatelessWidget {
  const BecomeTutorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BecomeTutorCubit(context.read<AccountCubit>().state.user),
      child: BlocListener<BecomeTutorCubit, BecomeTutorState>(
        listenWhen: (previous, current) => previous.handle != current.handle,
        listener: (context, state) {
          if (state.handle.isCompleted && state.handle.data != null) {
            final user = state.handle.data;
            if (user != null) {
              context.read<AccountCubit>().onLoginSuccess(user);
              // context.read<BecomeTutorCubit>().onChangeAvatar(user.avatar);
              XToast.success("Save success");
            }
          } else if (state.handle.isError) {
            XToast.error(S.text.error_somethingWrongTryAgain);
          }
        },
        child: Scaffold(
          appBar: AppBar(
            leading: DefaultAppBar.defaultLeading(),
          ),
          body: _body(context),
        ),
      ),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p16)
            .add(const EdgeInsets.only(top: Sizes.p32)),
        child: Column(
          children: [
            info(),
            gapH32,
            BlocBuilder<BecomeTutorCubit, BecomeTutorState>(
              buildWhen: (previous, current) =>
                  previous.name != current.name ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return TextFieldCustom(
                  text: state.name.value,
                  label: "Name",
                  height: Sizes.p16,
                  fontSize: Sizes.p16,
                  onChange: context.read<BecomeTutorCubit>().onChangeName,
                  errorText: state.onPress
                      ? state.name.error?.messageDefaultForm
                      : null,
                );
              },
            ),
            gapH20,
            BlocBuilder<BecomeTutorCubit, BecomeTutorState>(
              buildWhen: (previous, current) =>
                  previous.introduction != current.introduction ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return TextFieldCustom(
                  text: state.introduction.value,
                  label: "Introduction",
                  height: Sizes.p16,
                  fontSize: Sizes.p16,
                  onChange:
                      context.read<BecomeTutorCubit>().onChangeIntroduction,
                  errorText: state.onPress
                      ? state.introduction.error?.messageDefaultForm
                      : null,
                );
              },
            ),
            gapH20,
            BlocBuilder<BecomeTutorCubit, BecomeTutorState>(
              buildWhen: (previous, current) =>
                  previous.interest != current.interest ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return TextFieldCustom(
                  text: state.interest.value,
                  label: "Interests",
                  height: Sizes.p16,
                  fontSize: Sizes.p16,
                  onChange: context.read<BecomeTutorCubit>().onChangeInterest,
                  errorText: state.onPress
                      ? state.interest.error?.messageDefaultForm
                      : null,
                );
              },
            ),
            gapH20,
            BlocBuilder<BecomeTutorCubit, BecomeTutorState>(
              buildWhen: (previous, current) =>
                  previous.education != current.education ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return TextFieldCustom(
                  text: state.education.value,
                  label: "Education",
                  height: Sizes.p16,
                  fontSize: Sizes.p16,
                  onChange: context.read<BecomeTutorCubit>().onChangeEducation,
                  errorText: state.onPress
                      ? state.education.error?.messageDefaultForm
                      : null,
                );
              },
            ),
            gapH32,
            BlocBuilder<BecomeTutorCubit, BecomeTutorState>(
              buildWhen: (previous, current) =>
                  previous.handle != current.handle,
              builder: (context, state) {
                return SizedBox(
                  width: double.infinity,
                  child: PrimaryButton(
                    text: S.text.common_submit,
                    onPressed: context.read<BecomeTutorCubit>().save,
                  ),
                );
              },
            ),
            gapH4,
          ],
        ),
      ),
    );
  }

  Widget info() {
    return BlocBuilder<BecomeTutorCubit, BecomeTutorState>(
      buildWhen: (previous, current) => previous.avatar != current.avatar,
      builder: (context, state) {
        return Column(
          children: [
            GestureDetector(
              onTap: context.read<BecomeTutorCubit>().imagePicker,
              child: AvatarWidget(
                path: state.avatar,
                size: 150,
              ),
            ),
            gapH16,
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_size.dart';
import '../../../../dialogs/toast_wrapper.dart';
import '../../../../localization/localization_utils.dart';
import '../../../../network/model/common/default_form.dart';
import '../../bloc/account_cubit.dart';
import 'button_dropdown_one_custom.dart';
import 'cubit/edit_profile_cubit.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => EditProfileCubit(context.read<AccountCubit>().state.user),
      child: BlocListener<EditProfileCubit, EditProfileState>(
        listenWhen: (previous, current) => previous.handle != current.handle,
        listener: (context, state) {
          if (state.handle.isCompleted && state.handle.data != null) {
            final user = state.handle.data;
            if (user != null) {
              context.read<AccountCubit>().onLoginSuccess(user);
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
            BlocBuilder<EditProfileCubit, EditProfileState>(
              buildWhen: (previous, current) =>
                  previous.name != current.name ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return TextFieldCustom(
                  text: state.name.value,
                  label: "Name",
                  height: Sizes.p16,
                  fontSize: Sizes.p16,
                  onChange: context.read<EditProfileCubit>().onChangName,
                  errorText: state.onPress
                      ? state.name.error?.messageDefaultForm
                      : null,
                );
              },
            ),
            gapH20,
            BlocBuilder<EditProfileCubit, EditProfileState>(
              buildWhen: (previous, current) =>
                  previous.studySchedule != current.studySchedule ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return TextFieldCustom(
                  text: state.studySchedule,
                  label: "Study schedule",
                  onChange:
                      context.read<EditProfileCubit>().onChangStudySchedule,
                  height: Sizes.p16,
                  fontSize: Sizes.p16,
                );
              },
            ),
            gapH20,
            BlocBuilder<EditProfileCubit, EditProfileState>(
              buildWhen: (previous, current) =>
                  previous.level != current.level ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return SizedBox(
                    width: double.infinity,
                    child: ButtonDropDownOneCustom(
                      label: "My Level",
                      height: Sizes.p16,
                      fontSize: Sizes.p16,
                      selected: state.level.value,
                      onChange: context.read<EditProfileCubit>().onChangLevel,
                    ));
              },
            ),
            gapH32,
            BlocBuilder<EditProfileCubit, EditProfileState>(
              buildWhen: (previous, current) =>
                  previous.handle != current.handle,
              builder: (context, state) {
                return SizedBox(
                  width: double.infinity,
                  child: PrimaryButton(
                    text: "Save",
                    onPressed: context.read<EditProfileCubit>().save,
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
    return BlocBuilder<AccountCubit, AccountState>(
      builder: (context, state) {
        return Column(
          children: [
            AvatarWidget(
              url: state.user.avatar,
              size: 150,
            ),
            gapH16,
          ],
        );
      },
    );
  }
}

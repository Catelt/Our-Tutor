import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_size.dart';
import '../../../../dialogs/toast_wrapper.dart';
import '../../../../localization/localization_utils.dart';
import '../../../../network/model/common/default_form.dart';
import '../../../../utils/extension/datetime.dart';
import '../../bloc/account_cubit.dart';
import '../widgets/widgets.dart';
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
              context.read<EditProfileCubit>().onChangeAvatar(user.avatar);
              XToast.success(S.text.edit_profile_save);
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
                  label: S.text.edit_profile_name,
                  height: Sizes.p16,
                  fontSize: Sizes.p16,
                  onChange: context.read<EditProfileCubit>().onChangName,
                  errorText: state.onPress
                      ? state.name.error?.messageDefaultForm
                      : null,
                );
              },
            ),
            BlocBuilder<EditProfileCubit, EditProfileState>(
              buildWhen: (previous, current) => false,
              builder: (context, state) {
                return TextFieldCustom(
                  text: context.read<EditProfileCubit>().user.email,
                  label: S.text.edit_profile_email,
                  onChange:
                      context.read<EditProfileCubit>().onChangStudySchedule,
                  height: Sizes.p16,
                  fontSize: Sizes.p16,
                  enable: false,
                );
              },
            ),
            BlocBuilder<EditProfileCubit, EditProfileState>(
              buildWhen: (previous, current) => false,
              builder: (context, state) {
                return TextFieldCustom(
                  text: context.read<EditProfileCubit>().user.phone,
                  label: S.text.edit_profile_phone,
                  onChange:
                      context.read<EditProfileCubit>().onChangStudySchedule,
                  height: Sizes.p16,
                  fontSize: Sizes.p16,
                  enable: false,
                );
              },
            ),
            gapH20,
            BlocBuilder<EditProfileCubit, EditProfileState>(
              buildWhen: (previous, current) =>
                  previous.country != current.country ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return SizedBox(
                    width: double.infinity,
                    child: ButtonDropDownCountry(
                      label: S.text.edit_profile_country,
                      height: Sizes.p16,
                      fontSize: Sizes.p16,
                      selected: state.country,
                      onChange:
                          context.read<EditProfileCubit>().onChangeCountry,
                    ));
              },
            ),
            gapH20,
            BlocBuilder<EditProfileCubit, EditProfileState>(
              buildWhen: (previous, current) =>
                  previous.birthDay != current.birthDay ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return TextFieldCustom(
                  text: state.birthDay.toStringDate,
                  label: S.text.edit_profile_birthday,
                  height: Sizes.p16,
                  fontSize: Sizes.p16,
                  realOnly: true,
                  onTap: () async {
                    final DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: state.birthDay,
                      firstDate: DateTime(1950),
                      lastDate: DateTime.now(),
                    );
                    if (picked != null && picked != state.birthDay) {
                      context.read<EditProfileCubit>().onChangeBirthDay(picked);
                    }
                  },
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
                    child: ButtonDropDownLevel(
                      label: S.text.edit_profile_level,
                      height: Sizes.p16,
                      fontSize: Sizes.p16,
                      selected: state.level,
                      onChange: context.read<EditProfileCubit>().onChangeLevel,
                      errorText: state.onPress && state.level.id.isEmpty
                          ? S.text.common_empty_field
                          : null,
                    ));
              },
            ),
            gapH20,
            BlocBuilder<EditProfileCubit, EditProfileState>(
              buildWhen: (previous, current) =>
                  previous.learnTopics != current.learnTopics ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return SizedBox(
                    width: double.infinity,
                    child: ButtonDropDownLearnTopic(
                      label: S.text.edit_profile_topic,
                      height: Sizes.p16,
                      fontSize: Sizes.p16,
                      selected: state.learnTopics,
                      onChange:
                          context.read<EditProfileCubit>().onChangeLearnTutors,
                      errorText: state.onPress && state.learnTopics.isEmpty
                          ? S.text.common_empty_field
                          : null,
                    ));
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
                  label: S.text.edit_profile_study_schedule,
                  onChange:
                      context.read<EditProfileCubit>().onChangStudySchedule,
                  height: Sizes.p16,
                  fontSize: Sizes.p16,
                );
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
                    text: S.text.edit_profile_button,
                    onPressed: context.read<EditProfileCubit>().save,
                  ),
                );
              },
            ),
            gapH20,
          ],
        ),
      ),
    );
  }

  Widget info() {
    return BlocBuilder<AccountCubit, AccountState>(
      buildWhen: (previous, current) => previous.user != current.user,
      builder: (context, state) {
        return BlocBuilder<EditProfileCubit, EditProfileState>(
          buildWhen: (previous, current) => previous.avatar != current.avatar,
          builder: (context, state) {
            return Column(
              children: [
                GestureDetector(
                  onTap: context.read<EditProfileCubit>().imagePicker,
                  child: AvatarWidget(
                    url: state.avatar,
                    size: 150,
                  ),
                ),
                gapH16,
              ],
            );
          },
        );
      },
    );
  }
}

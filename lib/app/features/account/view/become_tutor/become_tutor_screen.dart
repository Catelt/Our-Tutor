import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_size.dart';
import '../../../../constants/base_style.dart';
import '../../../../dialogs/toast_wrapper.dart';
import '../../../../localization/localization_utils.dart';
import '../../../../network/model/common/default_form.dart';
import '../../../../utils/extension/datetime.dart';
import '../../bloc/account_cubit.dart';
import '../widgets/widgets.dart';
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
              context.read<AccountCubit>().updateProfile();
              XToast.success(S.text.edit_profile_save);
              Navigator.pop(context);
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
            Text(
              S.text.become_tutor_section_1,
              style: BaseTextStyle.heading2(),
            ),
            gapH12,
            BlocBuilder<BecomeTutorCubit, BecomeTutorState>(
              buildWhen: (previous, current) =>
                  previous.name != current.name ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return TextFieldCustom(
                  text: state.name.value,
                  label: S.text.edit_profile_name,
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
                          context.read<BecomeTutorCubit>().onChangeCountry,
                      errorText: state.onPress && state.country.code.isEmpty
                          ? S.text.common_empty_field
                          : null,
                    ));
              },
            ),
            gapH20,
            BlocBuilder<BecomeTutorCubit, BecomeTutorState>(
              buildWhen: (previous, current) =>
                  previous.birthday != current.birthday ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return TextFieldCustom(
                  text: state.birthday.toStringDate,
                  label: S.text.edit_profile_birthday,
                  height: Sizes.p16,
                  fontSize: Sizes.p16,
                  realOnly: true,
                  onTap: () async {
                    final DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: state.birthday,
                      firstDate: DateTime(1950),
                      lastDate: DateTime.now(),
                    );
                    if (picked != null && picked != state.birthday) {
                      context.read<BecomeTutorCubit>().onChangeBirthDay(picked);
                    }
                  },
                );
              },
            ),
            gapH20,
            Text(
              S.text.become_tutor_section_2,
              style: BaseTextStyle.heading2(),
            ),
            Text(
              S.text.become_tutor_section_subtitle_2,
              style: BaseTextStyle.subtitle2(),
              textAlign: TextAlign.center,
            ),
            gapH12,
            BlocBuilder<BecomeTutorCubit, BecomeTutorState>(
              buildWhen: (previous, current) =>
                  previous.interest != current.interest ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return TextFieldCustom(
                  text: state.interest.value,
                  label: S.text.become_tutor_interest,
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
                  label: S.text.become_tutor_education,
                  height: Sizes.p16,
                  fontSize: Sizes.p16,
                  onChange: context.read<BecomeTutorCubit>().onChangeEducation,
                  errorText: state.onPress
                      ? state.education.error?.messageDefaultForm
                      : null,
                );
              },
            ),
            gapH20,
            BlocBuilder<BecomeTutorCubit, BecomeTutorState>(
              buildWhen: (previous, current) =>
                  previous.experience != current.experience ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return TextFieldCustom(
                  text: state.experience.value,
                  label: S.text.become_tutor_experience,
                  height: Sizes.p16,
                  fontSize: Sizes.p16,
                  onChange: context.read<BecomeTutorCubit>().onChangeExperience,
                  errorText: state.onPress
                      ? state.experience.error?.messageDefaultForm
                      : null,
                );
              },
            ),
            gapH20,
            BlocBuilder<BecomeTutorCubit, BecomeTutorState>(
              buildWhen: (previous, current) =>
                  previous.profession != current.profession ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return TextFieldCustom(
                  text: state.profession.value,
                  label: S.text.become_tutor_profession,
                  height: Sizes.p16,
                  fontSize: Sizes.p16,
                  onChange: context.read<BecomeTutorCubit>().onChangeProfession,
                  errorText: state.onPress
                      ? state.profession.error?.messageDefaultForm
                      : null,
                );
              },
            ),
            gapH20,
            BlocBuilder<BecomeTutorCubit, BecomeTutorState>(
              buildWhen: (previous, current) =>
                  previous.languages != current.languages ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return SizedBox(
                    width: double.infinity,
                    child: ButtonDropDownLanguage(
                      label: S.text.become_tutor_language,
                      height: Sizes.p16,
                      fontSize: Sizes.p16,
                      selected: state.languages,
                      onChange:
                          context.read<BecomeTutorCubit>().onChangeLanguages,
                      errorText: state.onPress && state.languages.isEmpty
                          ? S.text.common_empty_field
                          : null,
                    ));
              },
            ),
            gapH20,
            Text(
              S.text.become_tutor_section_3,
              style: BaseTextStyle.heading2(),
            ),
            Text(
              S.text.become_tutor_section_subtitle_3,
              style: BaseTextStyle.subtitle2(),
              textAlign: TextAlign.center,
            ),
            gapH12,
            BlocBuilder<BecomeTutorCubit, BecomeTutorState>(
              buildWhen: (previous, current) =>
                  previous.introduction != current.introduction ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return TextFieldCustom(
                  text: state.introduction.value,
                  label: S.text.become_tutor_introduction,
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
            gapH12,
            BlocBuilder<BecomeTutorCubit, BecomeTutorState>(
              buildWhen: (previous, current) =>
                  previous.targetStudent != current.targetStudent ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return SizedBox(
                  width: double.infinity,
                  child: ButtonDropDownTargetStudent(
                    label: S.text.become_tutor_target_student,
                    height: Sizes.p16,
                    fontSize: Sizes.p16,
                    selected: state.targetStudent,
                    onChange:
                        context.read<BecomeTutorCubit>().onChangeTargetStudent,
                    errorText: state.onPress && state.targetStudent.isEmpty
                        ? S.text.common_empty_field
                        : null,
                  ),
                );
              },
            ),
            gapH12,
            BlocBuilder<BecomeTutorCubit, BecomeTutorState>(
              buildWhen: (previous, current) =>
                  previous.specialties != current.specialties ||
                  previous.onPress != current.onPress,
              builder: (context, state) {
                return SizedBox(
                  width: double.infinity,
                  child: ButtonDropDownSpecialty(
                    label: S.text.become_tutor_specialties,
                    height: Sizes.p16,
                    fontSize: Sizes.p16,
                    selected: state.specialties,
                    onChange:
                        context.read<BecomeTutorCubit>().onChangeSpecialties,
                    errorText: state.onPress && state.specialties.isEmpty
                        ? S.text.common_empty_field
                        : null,
                  ),
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
            gapH12,
          ],
        ),
      ),
    );
  }

  Widget info() {
    return BlocBuilder<BecomeTutorCubit, BecomeTutorState>(
      buildWhen: (previous, current) =>
          previous.avatar != current.avatar ||
          previous.onPress != current.onPress,
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
            Visibility(
              visible: state.onPress && state.avatar.isEmpty,
              child: Text(
                S.text.become_tutor_error_avatar,
                style: BaseTextStyle.body1().copyWith(color: Colors.red),
              ),
            )
          ],
        );
      },
    );
  }
}

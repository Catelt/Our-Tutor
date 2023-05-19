import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../network/domain_manager.dart';
import '../../../../../network/model/common/default_form.dart';
import '../../../../../network/model/common/handle.dart';
import '../../../../../network/model/country/country.dart';
import '../../../../../network/model/language/language.dart';
import '../../../../../network/model/specialty/specialty.dart';
import '../../../../../network/model/user/user.dart';
import '../../../../../utils/extension/datetime.dart';

part 'become_tutor_state.dart';

class BecomeTutorCubit extends Cubit<BecomeTutorState> {
  BecomeTutorCubit(this.user) : super(BecomeTutorState.ds(user));
  final domain = DomainManager();
  final MUser user;

  void onChangeName(String value) {
    emit(state.copyWith(name: DefaultForm.dirty(value)));
  }

  void onChangeBirthDay(DateTime value) {
    emit(state.copyWith(birthday: value));
  }

  void onChangeCountry(MCountry value) {
    emit(state.copyWith(country: value));
  }

  void onChangeIntroduction(String value) {
    emit(state.copyWith(introduction: DefaultForm.dirty(value)));
  }

  void onChangeInterest(String value) {
    emit(state.copyWith(interest: DefaultForm.dirty(value)));
  }

  void onChangeEducation(String value) {
    emit(state.copyWith(education: DefaultForm.dirty(value)));
  }

  void onChangeExperience(String value) {
    emit(state.copyWith(experience: DefaultForm.dirty(value)));
  }

  void onChangeProfession(String value) {
    emit(state.copyWith(profession: DefaultForm.dirty(value)));
  }

  void onChangeLanguages(List<MLanguage> value) {
    emit(state.copyWith(languages: value));
  }

  void onChangeTargetStudent(String value) {
    emit(state.copyWith(targetStudent: value));
  }

  void onChangeSpecialties(List<MSpecialty> value) {
    emit(state.copyWith(specialties: value));
  }

  void save() async {
    emit(state.copyWith(onPress: true));
    if (state.avatar.isNotEmpty &&
        state.name.isValid &&
        state.country.code.isNotEmpty &&
        state.interest.isValid &&
        state.education.isValid &&
        state.profession.isValid &&
        state.experience.isValid &&
        state.languages.isNotEmpty &&
        state.introduction.isValid &&
        state.specialties.isNotEmpty &&
        state.targetStudent.isNotEmpty) {
      emit(state.copyWith(handle: MHandle.loading()));
      final response = await domain.user.becomeTutor(
          name: state.name.value,
          country: state.country.code,
          birthday: state.birthday.toStringDate,
          interests: state.interest.value,
          education: state.education.value,
          experience: state.experience.value,
          profession: state.profession.value,
          languages: state.languages.map((e) => e.code).toList(),
          bio: state.introduction.value,
          targetStudent: state.targetStudent,
          specialties: state.specialties.map((e) => e.id).toList(),
          price: 50000);
      if (response.isSuccess) {
        final user = response.data;
        if (user != null) {
          emit(state.copyWith(handle: MHandle.completed(user)));
        }
      } else {
        emit(state.copyWith(handle: MHandle.error(response.error)));
      }
    }
  }

  void imagePicker() async {
    final picker = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picker == null) return;
    emit(state.copyWith(avatar: picker.path));
    // final response =
    //     await domain.user.changeAvatar(picker.path, name: picker.name);
    // if (response.isSuccess) {
    //   final user = response.data;
    //   if (user != null) {
    //     emit(state.copyWith(handle: MHandle.completed(user)));
    //   }
    // } else {
    //   emit(state.copyWith(handle: MHandle.error(response.error)));
    // }
  }
}

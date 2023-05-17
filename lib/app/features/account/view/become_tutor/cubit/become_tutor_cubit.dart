import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../network/domain_manager.dart';
import '../../../../../network/model/common/default_form.dart';
import '../../../../../network/model/common/handle.dart';
import '../../../../../network/model/country/country.dart';
import '../../../../../network/model/language/language.dart';
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

  void save() async {
    emit(state.copyWith(onPress: true));
    if (state.name.isValid &&
        state.introduction.isValid &&
        state.interest.isValid &&
        state.education.isValid) {
      emit(state.copyWith(handle: MHandle.loading()));
      final response = await domain.user.becomeTutor(
          name: state.name.value,
          country: "VN",
          birthday: "1999-06-01",
          interests: state.interest.value,
          education: state.education.value,
          experience: "15 years of teaching",
          profession: "Lecturer",
          languages: ["en"],
          bio: state.introduction.value,
          targetStudent: "Advanced",
          specialties: ["english-for-kids"],
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

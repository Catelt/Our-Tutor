import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../network/domain_manager.dart';
import '../../../../../network/model/common/default_form.dart';
import '../../../../../network/model/common/handle.dart';
import '../../../../../network/model/language/language.dart';
import '../../../../../network/model/learn_topic/learn_topic.dart';
import '../../../../../network/model/user/user.dart';
import '../../../../../utils/extension/datetime.dart';
import '../../../data/level.dart';

part 'edit_profile_state.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit(this.user) : super(EditProfileState.ds(user));
  final domain = DomainManager();
  final MUser user;

  void onChangName(String value) {
    emit(state.copyWith(name: DefaultForm.dirty(value)));
  }

  void onChangeCountry(MLanguage value) {
    emit(state.copyWith(country: value));
  }

  void onChangeBirthDay(DateTime value) {
    emit(state.copyWith(birthDay: value));
  }

  void onChangeLearnTutors(List<MLearnTopic> value) {
    emit(state.copyWith(learnTopics: value));
  }

  void onChangeLevel(MLevel value) {
    emit(state.copyWith(level: value));
  }

  void onChangStudySchedule(String value) {
    emit(state.copyWith(studySchedule: value));
  }

  void onChangeAvatar(String value) {
    emit(state.copyWith(avatar: value));
  }

  void save() async {
    emit(state.copyWith(onPress: true));
    if (state.name.isValid &&
        state.level.id.isNotEmpty &&
        state.learnTopics.isNotEmpty) {
      emit(state.copyWith(handle: MHandle.loading()));
      final response = await domain.user.updateProfile(
          name: state.name.value,
          country: user.country,
          phone: user.phone,
          birthday: user.birthday,
          level: state.level.id,
          learnTopics: user.learnTopics,
          studySchedule: state.studySchedule);
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
    emit(state.copyWith(handle: MHandle.loading()));
    final response =
        await domain.user.changeAvatar(picker.path, name: picker.name);
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

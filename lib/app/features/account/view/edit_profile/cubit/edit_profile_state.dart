part of 'edit_profile_cubit.dart';

class EditProfileState extends Equatable {
  final DefaultForm name;
  final DefaultForm level;
  final String studySchedule;
  final String avatar;
  final bool onPress;
  final MHandle<MUser> handle;

  EditProfileState({
    required this.name,
    required this.level,
    this.studySchedule = "",
    this.onPress = false,
    required this.avatar,
    required this.handle,
  });

  factory EditProfileState.ds(MUser user) => EditProfileState(
        name: DefaultForm.dirty(
            user.name.isEmpty ? user.email.split("@").first : user.name),
        level: DefaultForm.dirty(user.level ?? ""),
        studySchedule: user.studySchedule,
        avatar: user.avatar,
        handle: MHandle(),
      );

  @override
  List<Object?> get props =>
      [name, level, studySchedule, avatar, onPress, handle];

  EditProfileState copyWith({
    DefaultForm? name,
    DefaultForm? level,
    String? studySchedule,
    String? avatar,
    bool? onPress,
    MHandle<MUser>? handle,
  }) {
    return EditProfileState(
      name: name ?? this.name,
      level: level ?? this.level,
      studySchedule: studySchedule ?? this.studySchedule,
      avatar: avatar ?? this.avatar,
      onPress: onPress ?? this.onPress,
      handle: handle ?? this.handle,
    );
  }
}

part of 'edit_profile_cubit.dart';

class EditProfileState extends Equatable {
  final DefaultForm name;
  final MLevel level;
  final MCountry country;
  final DateTime birthDay;
  final List<MLearnTopic> learnTopics;
  final String studySchedule;
  final String avatar;
  final bool onPress;
  final MHandle<MUser> handle;

  EditProfileState({
    required this.name,
    required this.level,
    required this.country,
    required this.birthDay,
    required this.learnTopics,
    this.studySchedule = "",
    required this.avatar,
    this.onPress = false,
    required this.handle,
  });

  factory EditProfileState.ds(MUser user) => EditProfileState(
        name: DefaultForm.dirty(
            user.name.isEmpty ? user.email.split("@").first : user.name),
        level: MLevel.fromId(user.level),
        studySchedule: user.studySchedule,
        country: MCountry.fromCode(user.country ?? "VN"),
        birthDay: DateTime.tryParse(user.birthday ?? "") ?? DateTime.now(),
        learnTopics: user.learnTopics ?? [],
        avatar: user.avatar,
        handle: MHandle(),
      );

  @override
  List<Object?> get props => [
        name,
        level,
        studySchedule,
        avatar,
        onPress,
        handle,
        country,
        birthDay,
        learnTopics
      ];

  EditProfileState copyWith({
    DefaultForm? name,
    MLevel? level,
    MCountry? country,
    DateTime? birthDay,
    List<MLearnTopic>? learnTopics,
    String? studySchedule,
    String? avatar,
    bool? onPress,
    MHandle<MUser>? handle,
  }) {
    return EditProfileState(
      name: name ?? this.name,
      level: level ?? this.level,
      country: country ?? this.country,
      birthDay: birthDay ?? this.birthDay,
      learnTopics: learnTopics ?? this.learnTopics,
      studySchedule: studySchedule ?? this.studySchedule,
      avatar: avatar ?? this.avatar,
      onPress: onPress ?? this.onPress,
      handle: handle ?? this.handle,
    );
  }
}

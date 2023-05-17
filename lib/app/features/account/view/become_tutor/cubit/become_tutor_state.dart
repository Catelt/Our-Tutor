part of 'become_tutor_cubit.dart';

class BecomeTutorState extends Equatable {
  final DefaultForm name;
  final MCountry country;
  final DateTime birthday;
  final DefaultForm interest;
  final DefaultForm education;
  final DefaultForm experience;
  final DefaultForm profession;
  final List<MLanguage> languages;
  final DefaultForm introduction;
  final String targetStudent;
  final List<String> specialties;
  final String avatar;
  final bool onPress;
  final MHandle<MUser> handle;

  BecomeTutorState({
    required this.name,
    required this.country,
    required this.birthday,
    required this.interest,
    required this.education,
    required this.experience,
    required this.profession,
    required this.languages,
    required this.introduction,
    required this.targetStudent,
    required this.specialties,
    this.avatar = "",
    this.onPress = false,
    required this.handle,
  });

  factory BecomeTutorState.ds(MUser user) => BecomeTutorState(
        name: DefaultForm.dirty(user.name),
        country: MCountry.fromCode(user.country ?? "VN"),
        birthday: DateTime.parse(user.birthday ?? DateTime.now().toStringDate),
        interest: DefaultForm.pure(),
        education: DefaultForm.pure(),
        experience: DefaultForm.pure(),
        profession: DefaultForm.pure(),
        languages: const [],
        targetStudent: "",
        specialties: const [],
        introduction: DefaultForm.pure(),
        handle: MHandle(),
      );

  @override
  List<Object?> get props => [
        name,
        country,
        birthday,
        introduction,
        education,
        interest,
        profession,
        languages,
        introduction,
        targetStudent,
        specialties,
        avatar,
        onPress,
        handle
      ];

  BecomeTutorState copyWith({
    DefaultForm? name,
    MCountry? country,
    DateTime? birthday,
    DefaultForm? interest,
    DefaultForm? education,
    DefaultForm? experience,
    DefaultForm? profession,
    List<MLanguage>? languages,
    DefaultForm? introduction,
    String? targetStudent,
    List<String>? specialties,
    String? avatar,
    bool? onPress,
    MHandle<MUser>? handle,
  }) {
    return BecomeTutorState(
      name: name ?? this.name,
      country: country ?? this.country,
      birthday: birthday ?? this.birthday,
      interest: interest ?? this.interest,
      education: education ?? this.education,
      experience: experience ?? this.experience,
      profession: profession ?? this.profession,
      languages: languages ?? this.languages,
      introduction: introduction ?? this.introduction,
      targetStudent: targetStudent ?? this.targetStudent,
      specialties: specialties ?? this.specialties,
      avatar: avatar ?? this.avatar,
      onPress: onPress ?? this.onPress,
      handle: handle ?? this.handle,
    );
  }
}

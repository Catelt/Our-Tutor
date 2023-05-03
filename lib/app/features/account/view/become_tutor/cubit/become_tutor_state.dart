part of 'become_tutor_cubit.dart';

class BecomeTutorState extends Equatable {
  final DefaultForm name;
  final DefaultForm introduction;
  final DefaultForm interest;
  final DefaultForm education;
  final String avatar;
  final bool onPress;
  final MHandle<MUser> handle;

  BecomeTutorState({
    required this.name,
    required this.introduction,
    required this.interest,
    required this.education,
    this.avatar = "",
    this.onPress = false,
    required this.handle,
  });

  factory BecomeTutorState.ds() => BecomeTutorState(
        name: DefaultForm.pure(),
        introduction: DefaultForm.pure(),
        interest: DefaultForm.pure(),
        education: DefaultForm.pure(),
        handle: MHandle(),
      );

  @override
  List<Object?> get props =>
      [name, introduction, education, interest, avatar, onPress, handle];

  BecomeTutorState copyWith({
    DefaultForm? name,
    DefaultForm? introduction,
    DefaultForm? interest,
    DefaultForm? education,
    String? avatar,
    bool? onPress,
    MHandle<MUser>? handle,
  }) {
    return BecomeTutorState(
      name: name ?? this.name,
      introduction: introduction ?? this.introduction,
      interest: interest ?? this.interest,
      education: education ?? this.education,
      avatar: avatar ?? this.avatar,
      onPress: onPress ?? this.onPress,
      handle: handle ?? this.handle,
    );
  }
}

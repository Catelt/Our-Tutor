part of 'tutor_detail_cubit.dart';

class TutorDetailState extends Equatable {
  final MHandle<MTutor> handle;
  final MTutor tutor;
  const TutorDetailState({
    required this.handle,
    required this.tutor,
  });

  factory TutorDetailState.ds() =>
      TutorDetailState(handle: MHandle(), tutor: MTutor());

  TutorDetailState copyWith({
    MHandle<MTutor>? handle,
    MTutor? tutor,
  }) {
    return TutorDetailState(
      handle: handle ?? this.handle,
      tutor: tutor ?? this.tutor,
    );
  }

  @override
  List<Object?> get props => [handle, tutor];
}

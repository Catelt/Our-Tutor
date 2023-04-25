// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'tutor_detail_cubit.dart';

class TutorDetailState extends Equatable {
  final MHandle<MTutor> handle;
  const TutorDetailState({
    required this.handle,
  });

  factory TutorDetailState.ds() => TutorDetailState(handle: MHandle());

  TutorDetailState copyWith({
    MHandle<MTutor>? handle,
  }) {
    return TutorDetailState(
      handle: handle ?? this.handle,
    );
  }

  @override
  List<Object?> get props => [handle];
}

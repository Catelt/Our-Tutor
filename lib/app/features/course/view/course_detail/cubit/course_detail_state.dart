part of 'course_detail_cubit.dart';

class CourseDetailState extends Equatable {
  final MHandle<MCourse> handle;

  const CourseDetailState({
    required this.handle,
  });

  factory CourseDetailState.ds() => CourseDetailState(handle: MHandle());

  CourseDetailState copyWith({
    MHandle<MCourse>? handle,
  }) {
    return CourseDetailState(
      handle: handle ?? this.handle,
    );
  }

  @override
  List<Object?> get props => [handle];
}

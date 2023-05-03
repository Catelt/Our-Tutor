part of 'tutor_detail_cubit.dart';

class TutorDetailState extends Equatable {
  final MHandle<MTutor> handle;
  final MTutor tutor;
  final List<MScheduleInfo> schedule;
  final MHandle<bool> handleSchedule;
  final DateTime onSelected;

  const TutorDetailState({
    required this.handle,
    required this.tutor,
    required this.schedule,
    required this.handleSchedule,
    required this.onSelected,
  });

  factory TutorDetailState.ds() => TutorDetailState(
        handle: MHandle(),
        tutor: MTutor(),
        schedule: [],
        handleSchedule: MHandle(),
        onSelected: DateTime.now(),
      );

  TutorDetailState copyWith({
    MHandle<MTutor>? handle,
    MTutor? tutor,
    List<MScheduleInfo>? schedule,
    MHandle<bool>? handleSchedule,
    DateTime? onSelected,
  }) {
    return TutorDetailState(
      handle: handle ?? this.handle,
      tutor: tutor ?? this.tutor,
      schedule: schedule ?? this.schedule,
      handleSchedule: handleSchedule ?? this.handleSchedule,
      onSelected: onSelected ?? this.onSelected,
    );
  }

  @override
  List<Object?> get props =>
      [handle, tutor, schedule, handleSchedule, onSelected];
}

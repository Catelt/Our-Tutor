part of 'schedule_cubit.dart';

class ScheduleState extends Equatable {
  final MHandle<bool> handle;
  final bool hasNextPage;
  final int page;
  final List<MBookings> list;

  ScheduleState({
    required this.handle,
    required this.hasNextPage,
    required this.page,
    required this.list,
  });

  factory ScheduleState.ds() =>
      ScheduleState(handle: MHandle(), hasNextPage: true, page: 0, list: []);

  ScheduleState copyWith({
    MHandle<bool>? handle,
    bool? hasNextPage,
    int? page,
    List<MBookings>? list,
  }) {
    return ScheduleState(
      handle: handle ?? this.handle,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      page: page ?? this.page,
      list: list ?? this.list,
    );
  }

  @override
  List<Object?> get props => [handle, hasNextPage, page, list];
}

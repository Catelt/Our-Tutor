part of 'history_cubit.dart';

class HistoryState extends Equatable {
  final MHandle<bool> handle;
  final bool hasNextPage;
  final int page;
  final List<MBooking> list;

  HistoryState({
    required this.handle,
    required this.hasNextPage,
    required this.page,
    required this.list,
  });

  factory HistoryState.ds() =>
      HistoryState(handle: MHandle(), hasNextPage: true, page: 0, list: []);

  HistoryState copyWith({
    MHandle<bool>? handle,
    bool? hasNextPage,
    int? page,
    List<MBooking>? list,
  }) {
    return HistoryState(
      handle: handle ?? this.handle,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      page: page ?? this.page,
      list: list ?? this.list,
    );
  }

  @override
  List<Object?> get props => [handle, hasNextPage, page, list];
}

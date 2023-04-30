part of 'feedback_cubit.dart';

class FeedbackState extends Equatable {
  final MHandle<bool> handle;
  final bool hasNextPage;
  final int page;
  final List<MFeedback> list;

  FeedbackState({
    required this.handle,
    this.hasNextPage = true,
    this.page = 0,
    this.list = const [],
  });

  factory FeedbackState.ds() => FeedbackState(handle: MHandle());

  FeedbackState copyWith({
    MHandle<bool>? handle,
    bool? hasNextPage,
    int? page,
    List<MFeedback>? list,
  }) {
    return FeedbackState(
      handle: handle ?? this.handle,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      page: page ?? this.page,
      list: list ?? this.list,
    );
  }

  @override
  List<Object?> get props => [handle, hasNextPage, page, list];
}

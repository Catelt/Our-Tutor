part of 'topic_detail_cubit.dart';

class TopicDetailState extends Equatable {
  final MHandle<MCourse> handle;
  final int selected;

  const TopicDetailState({
    required this.handle,
    this.selected = 0,
  });

  factory TopicDetailState.ds() => TopicDetailState(handle: MHandle());

  TopicDetailState copyWith({
    MHandle<MCourse>? handle,
    int? selected,
  }) {
    return TopicDetailState(
        handle: handle ?? this.handle, selected: selected ?? this.selected);
  }

  @override
  List<Object?> get props => [handle, selected];
}

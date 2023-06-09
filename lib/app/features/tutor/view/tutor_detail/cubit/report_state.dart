part of 'report_cubit.dart';

class ReportState extends Equatable {
  final DefaultForm content;
  final MHandle<bool> handle;
  final bool isPress;

  ReportState(
      {required this.content, required this.handle, this.isPress = false});

  factory ReportState.ds() =>
      ReportState(content: DefaultForm.pure(), handle: MHandle());

  ReportState copyWith({
    DefaultForm? content,
    MHandle<bool>? handle,
    bool? isPress,
  }) {
    return ReportState(
      content: content ?? this.content,
      handle: handle ?? this.handle,
      isPress: isPress ?? this.isPress,
    );
  }

  @override
  List<Object?> get props => [content, handle, isPress];
}

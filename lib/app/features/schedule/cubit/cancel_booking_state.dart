part of 'cancel_booking_cubit.dart';

class CancelBookingState extends Equatable {
  final String content;
  final MHandle<bool> handle;

  CancelBookingState({this.content = "", required this.handle});

  factory CancelBookingState.ds() => CancelBookingState(handle: MHandle());

  CancelBookingState copyWith({
    String? content,
    MHandle<bool>? handle,
  }) {
    return CancelBookingState(
      content: content ?? this.content,
      handle: handle ?? this.handle,
    );
  }

  @override
  List<Object?> get props => [content, handle];
}

part of 'booking_cubit.dart';

class BookingState extends Equatable {
  final String content;
  final MHandle<bool> handle;

  BookingState({this.content = "", required this.handle});

  factory BookingState.ds() => BookingState(handle: MHandle());

  BookingState copyWith({
    String? content,
    MHandle<bool>? handle,
  }) {
    return BookingState(
      content: content ?? this.content,
      handle: handle ?? this.handle,
    );
  }

  @override
  List<Object?> get props => [content, handle];
}

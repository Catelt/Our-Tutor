part of 'booking_cubit.dart';

class BookingState extends Equatable {
  final DefaultForm content;
  final MHandle<bool> handle;
  final bool isPress;

  BookingState(
      {required this.content, required this.handle, this.isPress = false});

  factory BookingState.ds() =>
      BookingState(content: DefaultForm.pure(), handle: MHandle());

  BookingState copyWith({
    DefaultForm? content,
    MHandle<bool>? handle,
    bool? isPress,
  }) {
    return BookingState(
      content: content ?? this.content,
      handle: handle ?? this.handle,
      isPress: isPress ?? this.isPress,
    );
  }

  @override
  List<Object?> get props => [content, handle, isPress];
}

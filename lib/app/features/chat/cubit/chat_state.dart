part of 'chat_cubit.dart';

class ChatState extends Equatable {
  final List<XMessage> messages;
  final bool isLoading;

  const ChatState({
    this.messages = const [],
    this.isLoading = false,
  });

  factory ChatState.ds() {
    return ChatState(
      messages: UserPrefs.I.getMessages(),
    );
  }

  ChatState copyWith({
    List<XMessage>? messages,
    bool? isLoading,
  }) {
    return ChatState(
      messages: messages ?? this.messages,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [messages, isLoading];

  String get getRecentMessageOfUser {
    var str = '';
    List<XMessage> list = List.from(this.messages);
    list = list.reversed.toList();
    for (var i = 0; i < list.length && i < 10; i++) {
      str += '${list[i].msg}.';
    }
    return str;
  }
}

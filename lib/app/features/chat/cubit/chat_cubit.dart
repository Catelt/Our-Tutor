import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../network/domain_manager.dart';
import '../../../network/model/message.dart';
import '../../../services/user_prefs.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatState.ds());

  final domain = DomainManager();

  void addMessage(XMessage value) {
    List<XMessage> newList = List.from(state.messages);
    newList.add(value);
    emit(state.copyWith(messages: newList));
    UserPrefs.I.saveMessages(newList);
  }

  void removeAllMessage() {
    emit(state.copyWith(messages: []));
    UserPrefs.I.saveMessages([]);
  }

  Future<void> sendMessage(String message) async {
    emit(state.copyWith(isLoading: true));
    String str = state.getRecentMessageOfUser;
    if (str.isNotEmpty) {
      str = '$str $message';
    } else {
      str = message;
    }
    final result = await domain.gpt.sendMessage(message: message);
    if (result.isSuccess) {
      result.data?.forEach((message) {
        addMessage(message);
      });
    }
    emit(state.copyWith(isLoading: false));
  }
}

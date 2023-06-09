import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common_widgets/common_widgets.dart';
import '../../constants/app_size.dart';
import '../../network/model/message.dart';
import 'cubit/chat_cubit.dart';
import 'widgets/custom_edit_text.dart';
import 'widgets/msg_item.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ChatCubit(),
      child: _homeView(context),
    );
  }

  Widget _homeView(BuildContext context) => BlocBuilder<ChatCubit, ChatState>(
        buildWhen: (previous, current) =>
            previous.isLoading != current.isLoading,
        builder: (context, state) {
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              leading: DefaultAppBar.defaultLeading(),
            ),
            body: BlocBuilder<ChatCubit, ChatState>(
              buildWhen: (previous, current) =>
                  previous.messages != current.messages,
              builder: (context, state) {
                return SafeArea(
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        height: double.infinity,
                        child: SingleChildScrollView(
                            reverse: true,
                            child: ListView.builder(
                                padding: const EdgeInsets.only(bottom: 70),
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: state.messages.length,
                                itemBuilder: (context, index) => MsgItem(
                                      item: state.messages[index],
                                      index: index,
                                      isLast:
                                          index == state.messages.length - 1,
                                    ))),
                      ),
                      Positioned(
                          bottom: 20,
                          left: Sizes.p16,
                          right: Sizes.p16,
                          child: CustomEditText(
                            onSendText: (text) {
                              context.read<ChatCubit>().addMessage(
                                  XMessage.newMsg(text, indexChat: 1));
                              context.read<ChatCubit>().sendMessage(text);
                            },
                          ))
                    ],
                  ),
                );
              },
            ),
          );
        },
      );
}

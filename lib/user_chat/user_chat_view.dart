import 'package:chat_app/data/user.dart';
import 'package:chat_app/helping_views/background.dart';
import 'package:chat_app/user_chat/input/chat_input_bar.dart';
import 'package:chat_app/user_chat/chat_messages_list.dart';
import 'package:flutter/material.dart';

class UserChatView extends StatelessWidget {
  final User user;

  const UserChatView({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
        actions: [Icon(Icons.more_horiz), const SizedBox(width: 16.0)],
        centerTitle: true,
      ),
      body: ListsBackground(
        child: Column(
          children: [
            Expanded(child: ChatMessagesList()),
            ChatInputBar(),
          ],
        ),
      ),
    );
  }
}

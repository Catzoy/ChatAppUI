import 'dart:math';

import 'package:chat_app/data/message.dart';
import 'package:chat_app/data/user.dart';
import 'package:chat_app/helping_views/background.dart';
import 'package:chat_app/main/contacts/chats/chat_list_tile.dart';
import 'package:flutter/material.dart';

class ChatsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var random = Random();
    return ListsBackground(
      child: SafeArea(
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: Users.all.length,
          itemExtent: 100.0,
          padding: const EdgeInsets.only(right: 16.0),
          itemBuilder: (_, index) => ChatListTile(
            message:
                Messages.messages[random.nextInt(Messages.messages.length)],
            user: Users.all[index],
          ),
        ),
      ),
    );
  }
}

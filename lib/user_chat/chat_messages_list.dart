import 'package:chat_app/data/message.dart';
import 'package:chat_app/data/user.dart';
import 'package:chat_app/user_chat/message/fav_button.dart';
import 'package:chat_app/user_chat/message/message_view.dart';
import 'package:flutter/material.dart';

class ChatMessagesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      physics: BouncingScrollPhysics(),
      itemCount: Messages.conversation.length,
      itemBuilder: (_, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ChatMessageTile(message: Messages.conversation[index]),
      ),
    );
  }
}

class ChatMessageTile extends StatelessWidget {
  const ChatMessageTile({
    Key key,
    @required this.message,
  }) : super(key: key);

  final Message message;

  @override
  Widget build(BuildContext context) {
    final viewChildren = <Widget>[
      Expanded(flex: 5, child: MessageView(message: message))
    ];
    Widget view;
    int indexToInsert;

    if (message.sender.id == Users.current.id) {
      view = SizedBox.shrink();
      indexToInsert = 0;
    } else {
      view = FavButton(isLiked: message.isLiked);
      indexToInsert = viewChildren.length;
    }

    viewChildren.insert(indexToInsert, Flexible(child: Center(child: view)));

    return Row(children: viewChildren);
  }
}

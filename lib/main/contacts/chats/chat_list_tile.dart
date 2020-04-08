import 'package:chat_app/data/message.dart';
import 'package:chat_app/data/user.dart';
import 'package:chat_app/user_chat/user_chat_view.dart';
import 'package:chat_app/view_measurements.dart';
import 'package:flutter/material.dart';

class ChatListTile extends StatelessWidget {
  const ChatListTile({
    Key key,
    @required this.message,
    @required this.user,
  }) : super(key: key);

  final Message message;
  final User user;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => UserChatView(user: user),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: 6.0),
        decoration: BoxDecoration(
            color: message.isUnread ? Theme.of(context).colorScheme.surface : null,
            borderRadius: BorderRadius.horizontal(right: Radius.circular(20.0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 16.0),
            CircleAvatar(
              backgroundImage: AssetImage(user.img),
              radius: ViewMeasurements.CIRCULAR_AV_RADIUS,
            ),
            Expanded(
              child: _UserTileWithLastMessage(
                user: user,
                lastMessage: message,
              ),
            ),
            _LastMessageNotifier(message: message),
            const SizedBox(width: 8.0),
          ],
        ),
      ),
    );
  }
}

class _LastMessageNotifier extends StatelessWidget {
  const _LastMessageNotifier({
    Key key,
    @required this.message,
  }) : super(key: key);

  final Message message;

  Widget _newNotifier(context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 4.0,
        ),
        child: Text(
          "NEW",
          style: theme.primaryTextTheme.body1,
          textScaleFactor: 0.8,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(message.date),
          message.isUnread ? _newNotifier(context) : const SizedBox.shrink(),
        ],
      ),
    );
  }
}

class _UserTileWithLastMessage extends StatelessWidget {
  const _UserTileWithLastMessage({
    Key key,
    @required this.user,
    @required this.lastMessage,
  }) : super(key: key);

  final User user;
  final Message lastMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            user.name,
            style: Theme.of(context).textTheme.body2,
          ),
          Text(
            lastMessage.text,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

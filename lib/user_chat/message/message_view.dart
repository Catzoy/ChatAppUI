import 'package:chat_app/data/message.dart';
import 'package:chat_app/data/user.dart';
import 'package:chat_app/view_measurements.dart';
import 'package:flutter/material.dart';

class MessageView extends StatelessWidget {
  const MessageView({
    Key key,
    @required this.message,
  }) : super(key: key);

  final Message message;

  BoxDecoration _curDecoration(ThemeData theme) => BoxDecoration(
        color: theme.colorScheme.secondary,
        borderRadius: ViewMeasurements.BORDER_RADIUS_LEFT,
      );

  BoxDecoration _otherDecoration(ThemeData theme) => BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: ViewMeasurements.BORDER_RADIUS_RIGHT,
      );

  @override
  Widget build(BuildContext context) {
    final decoration = message.sender.id == Users.current.id
        ? _curDecoration
        : _otherDecoration;

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      decoration: decoration(Theme.of(context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message.date,
            style: Theme.of(context).textTheme.body2,
          ),
          const SizedBox(height: 8.0),
          Text(message.text),
        ],
      ),
    );
  }
}

import 'package:chat_app/view_measurements.dart';
import 'package:flutter/material.dart';

import 'chats/chats_view.dart';
import 'favourites/favorites_view.dart';

class ContactsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: ViewMeasurements.BORDER_RADIUS_TOP,
      ),
      child: Column(
        children: [
          Flexible(
            child: FavoritesView(),
          ),
          const SizedBox(height: 16.0),
          Expanded(
            flex: 3,
            child: ChatsView(),
          ),
        ],
      ),
    );
  }
}

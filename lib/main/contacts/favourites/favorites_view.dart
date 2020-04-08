import 'package:chat_app/data/user.dart';
import 'package:chat_app/user_chat/user_chat_view.dart';
import 'package:chat_app/view_measurements.dart';
import 'package:flutter/material.dart';

class FavoritesView extends StatelessWidget {
  Widget _favoritesHeader(context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Favorite contacts",
              textScaleFactor: 1.2,
            ),
            Icon(Icons.more_horiz),
          ],
        ),
      );

  Widget get _favoritesList => ListView.builder(
        padding: EdgeInsets.only(left: 16.0),
        scrollDirection: Axis.horizontal,
        itemCount: Users.favorites.length,
        itemBuilder: (_, index) {
          return _UserFavView(user: Users.favorites[index]);
        },
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _favoritesHeader(context),
        Expanded(child: _favoritesList),
      ],
    );
  }
}

class _UserFavView extends StatelessWidget {
  final User user;

  const _UserFavView({
    Key key,
    @required this.user,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => UserChatView(user: user),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              child: CircleAvatar(
                backgroundImage: AssetImage(user.img),
                radius: ViewMeasurements.CIRCULAR_AV_RADIUS,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(user.name),
          ],
        ),
      ),
    );
  }
}

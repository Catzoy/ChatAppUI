import 'package:flutter/material.dart';

class FavButton extends StatefulWidget {
  final bool isLiked;

  const FavButton({Key key, this.isLiked}) : super(key: key);
  @override
  _FavButtonState createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  bool isLiked;

  @override
  void initState() {
    super.initState();
    isLiked = widget.isLiked;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final icon = isLiked ? Icons.favorite : Icons.favorite_border;
    final iconColor = isLiked ? theme.primaryColor : theme.iconTheme.color;
    return IconButton(
      icon: Icon(icon, color: iconColor),
      iconSize: theme.iconTheme.size,
      onPressed: () => setState(() => isLiked = !isLiked),
    );
  }
}
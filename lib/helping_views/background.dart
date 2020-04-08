import 'package:chat_app/view_measurements.dart';
import 'package:flutter/material.dart';

class ListsBackground extends StatelessWidget {
  final Widget child;

  const ListsBackground({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: ViewMeasurements.BORDER_RADIUS_TOP,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: ViewMeasurements.BORDER_RADIUS_TOP,
        ),
        child: Stack(
          children: [
            child,
            _topWhiteShadow,
          ],
        ),
      ),
    );
  }

  IgnorePointer get _topWhiteShadow => IgnorePointer(
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white70,
                Colors.white54,
                Colors.white30,
                Colors.white.withOpacity(0.0),
              ],
            ),
          ),
          child: SizedBox(
            height: 50.0,
            width: double.infinity,
          ),
        ),
      );
}

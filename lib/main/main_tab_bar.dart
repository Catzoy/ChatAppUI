import 'package:flutter/material.dart';

class MainViewTabBar extends StatefulWidget {
  final _tabs = ["Messages", "Online", "Groups", "Requests"];
  @override
  _MainViewTabBarState createState() => _MainViewTabBarState(_tabs);
}

class _MainViewTabBarState extends State<MainViewTabBar> {
  static const ITEM_SIZE = 150.0;

  final List<String> tabs;
  int selectedIndex = 0;

  _MainViewTabBarState(this.tabs);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final defaultStyle = theme.primaryTextTheme.body1;
    final labelStyleNotSelected = defaultStyle.copyWith(
      color: defaultStyle.color.withAlpha(150),
    );

    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      scrollDirection: Axis.horizontal,
      itemCount: tabs.length,
      itemExtent: ITEM_SIZE,
      itemBuilder: (_, index) => FlatButton(
        padding: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 16.0),
        child: Text(
          tabs[index],
          textScaleFactor: 2.0,
          style: index == selectedIndex ? defaultStyle : labelStyleNotSelected,
        ),
        onPressed: () => setState(() => selectedIndex = index),
      ),
    );
  }
}

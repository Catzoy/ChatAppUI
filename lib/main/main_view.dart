import 'package:chat_app/main/main_tab_bar.dart';
import 'package:flutter/material.dart';

import 'contacts/contacts_view.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: MainViewTabBar(),
        ),
        Expanded(
          flex: 10,
          child: ContactsView(),
        ),
      ],
    );
  }
}

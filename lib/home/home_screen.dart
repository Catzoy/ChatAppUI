import 'package:chat_app/main/main_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.search),
          const SizedBox(width: 12.0),
        ],
        title: Text("Chats"),
        centerTitle: true,
      ),
      body: MainView(),
    );
  }
}

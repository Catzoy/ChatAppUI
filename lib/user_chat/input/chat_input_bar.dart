import 'package:flutter/material.dart';

class ChatInputBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        margin: const EdgeInsets.symmetric(horizontal: 32.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Icon(Icons.insert_emoticon),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type your message...",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Icon(Icons.attach_file),
          ],
        ),
      ),
    );
  }
}

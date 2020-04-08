import 'package:chat_app/data/user.dart';

class Message {
  final User sender;
  final String text;
  final String date;

  final bool isUnread;
  final bool isLiked;
  final bool wasEdited;

  const Message(
    this.sender,
    this.text,
    this.date, {
    this.isUnread = false,
    this.isLiked = false,
    this.wasEdited = false,
  });
}

class Messages {
  static const messages = [
    Message(
      Users.current,
      "Yeah, se you soon!",
      "17:40",
      isUnread: true,
    ),
    Message(
      Users.current,
      "Congratulations! I`m so happy about you! I know how much work it takes just to get to there.",
      "17:40",
    ),
    Message(
      Users.current,
      "Btw, don`t take it for granted.",
      "17:40",
    ),
    Message(
      Users.current,
      "Hi, did you do your diploma? I`m getting worried about you.",
      "17:40",
      isUnread: true,
    ),
    Message(
      Users.current,
      "It`s more than just a game! There will be so many streamers from all over the world!! WE MUST GET THERE!",
      "17:40",
    ),
    Message(
      Users.current,
      "Great! Let`s do this :)",
      "17:40",
    ),
    Message(
      Users.current,
      "Nice, just the thing that i needed! Thanks!",
      "17:40",
      isUnread: true,
    ),
    Message(
      Users.current,
      "Sample text, sample Text, Sample Text, sample text",
      "17:40",
      isUnread: true,
    ),
  ];

  static const conversation = [
    Message(
      Users.current,
      "Cool. There are beautiful architecture and fountains, "
          "but I was particularly impressed by the "
          "sculpture of a baby in zero gravity",
      "17:40",
    ),
    Message(
      Users.christina,
      "I visited Singapore. Amazing place\nThe trip was unforgettable",
      "17:39",
      isLiked: true,
    ),
    Message(
      Users.current,
      "I heard you traveled?\nWhere did you go this time?",
      "17:39",
      wasEdited: true,
    ),
    Message(
      Users.current,
      "Good, what about you?",
      "17:38",
    ),
    Message(
      Users.christina,
      "Hello, how are you?",
      "17:21",
    ),
  ];
}

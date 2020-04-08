import 'package:chat_app/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  ThemeData get _theme {
    final reference = ThemeData.dark();
    final scheme = ColorScheme.dark(
      background: Colors.grey[50],
      primary: Colors.red,
      secondary: Colors.yellow[50],
      surface: Colors.red.withAlpha(20),
    );
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: scheme,
      primarySwatch: scheme.primary,
      primaryColor: scheme.primary,
      backgroundColor: scheme.background,
      scaffoldBackgroundColor: scheme.primary,
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 30.0,
        ),
      ),
      textTheme: TextTheme(
        body1: TextStyle(
          color: Colors.blueGrey[700],
          fontWeight: FontWeight.bold,
        ),
        body2: TextStyle(
          color: Colors.blueGrey[700],
        ),
      ),
      primaryTextTheme: TextTheme(
        body1: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.blueGrey[700],
        size: 30.0,
      ),
      splashColor: reference.splashColor,
      highlightColor: reference.highlightColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chats Demo',
      theme: _theme,
      home: HomeScreen(),
    );
  }
}

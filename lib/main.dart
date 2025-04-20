import 'package:flutter/material.dart';
import 'package:test_project/pages/chat.page.dart';
import 'package:test_project/pages/counter.page.dart';
import 'package:test_project/pages/help.page.dart';
import 'pages/home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => HomePage(),
        "/chat": (context) => ChatPage(),
        "/counter": (context) => CounterPage(),
        "/help": (context) => HelpPage(),
      },
      theme: ThemeData(
        indicatorColor: Colors.indigoAccent,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}

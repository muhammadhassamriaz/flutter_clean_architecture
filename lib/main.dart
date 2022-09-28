import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Coding Challenge',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const Navigator(
        pages: [
          MaterialPage(
            key: ValueKey("Home Screen"),
            child: Scaffold(),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:game_monopoly/game_monopoly.dart';

import 'test_game_scene.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            TextButton.icon(
                onPressed: () => onPlay(context),
                icon: const Icon(Icons.graphic_eq),
                label: const Text("ABC")),
            MenuComponent(
              onPlay: () => onPlay(context),
            ),
            // MenuBackground(),
            // GamePlay(),
          ],
        ));
  }

  onPlay(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TestGameScene()),
    );
  }
}

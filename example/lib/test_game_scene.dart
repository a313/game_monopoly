import 'package:flutter/material.dart';
import 'package:game_monopoly/modules/game_play.dart';

class TestGameScene extends StatelessWidget {
  const TestGameScene({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Test"),
      ),
      body: GamePlay(),
    );
  }
}

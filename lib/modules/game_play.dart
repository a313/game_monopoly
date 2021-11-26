import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:game_monopoly/base/knows_game_size.dart';
import 'package:game_monopoly/charactor/santa.dart';

class GamePlay extends StatelessWidget {
  const GamePlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: _GamePlay());
  }
}

class _GamePlay extends BaseGame with WidgetsBindingObserver {
  bool _isAlreadyLoaded = false;

  @override
  Future<void> onLoad() {
    if (!_isAlreadyLoaded) {
      final santa = Santa(this);
      santa.position = Vector2(200, 100);
      add(santa);
      _isAlreadyLoaded = true;
    }
    return super.onLoad();
  }

  @override
  void onAttach() {
    WidgetsBinding.instance?.addObserver(this);
    super.onAttach();
  }

  @override
  void onDetach() {
    WidgetsBinding.instance?.removeObserver(this);
    super.onDetach();
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.inactive) {
      pauseEngine();
    } else if (state == AppLifecycleState.resumed) {
      resumeEngine();
    }
  }

  @override
  void prepare(Component c) {
    super.prepare(c);
    if (c is KnowsGameSize) {
      c.onResize(size);
    }
  }

  @override
  void onResize(Vector2 canvasSize) {
    super.onResize(canvasSize);
    components.whereType<KnowsGameSize>().forEach((component) {
      component.onResize(size);
    });
  }
}

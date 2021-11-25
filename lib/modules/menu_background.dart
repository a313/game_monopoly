import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:game_monopoly/base/knows_game_size.dart';

class MenuBackground extends StatelessWidget {
  const MenuBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: _MenuBackground());
  }
}

class _MenuBackground extends BaseGame {
  bool _isAlreadyLoaded = false;

  @override
  Future<void> onLoad() async {
    if (!_isAlreadyLoaded) {
      await Flame.images.loadAll(["charactor/jump.png", "charactor/idle.png"]);

      _isAlreadyLoaded = true;
    }
    return super.onLoad();
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
    // Loop over all the components of type KnowsGameSize and resize then as well.
    components.whereType<KnowsGameSize>().forEach((component) {
      component.onResize(size);
    });
  }
}

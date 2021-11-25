import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flame/sprite.dart';
import 'package:game_monopoly/base/knows_game_size.dart';
import 'package:game_monopoly/base/animation_charactor.dart';

enum CharactorState {
  idle,
  jump,
}

class Santa extends Component with HasGameRef {
  final bool fromLeft;
  final CharactorState state = CharactorState.idle;
  late final SpriteAnimation _idleAnimation;
  late final SpriteAnimation _jumpAnimation;

  Santa({
    required Image image,
    this.fromLeft = true,
  });

  @override
  Future<void>? onLoad() async {
    final idle = Flame.images.fromCache('idle.png');
    final jump = Flame.images.fromCache('jump.png');

    final idleSs = SpriteSheet(image: idle, srcSize: Vector2(100.0, 100.0));
    final jumpSs = SpriteSheet(image: jump, srcSize: Vector2(100.0, 100.0));
    _idleAnimation = idleSs.createAnimation(row: 0, stepTime: 0.25);
    _jumpAnimation = jumpSs.createAnimation(row: 0, stepTime: 0.25);
    return super.onLoad();
  }
}

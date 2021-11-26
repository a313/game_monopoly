import 'package:flame/assets.dart';
import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:game_monopoly/modules/game_play.dart';

enum CharactorState {
  idle,
  jump,
}

class Santa extends SpriteAnimationComponent {
  final CharactorState state = CharactorState.idle;
  final BaseGame gameRef;
  late final SpriteAnimation _idleAnimation;
  late final SpriteAnimation _jumpAnimation;

  Santa(this.gameRef);

  @override
  Future<void>? onLoad() async {
    final images = Images(prefix: "packages/game_monopoly/assets/images/");
    final idle = await images.load('actor/idle.png');
    final jump = await images.load('actor/jump.png');

    final idleSs = SpriteSheet(image: idle, srcSize: Vector2(100.0, 100.0));
    final jumpSs = SpriteSheet(image: jump, srcSize: Vector2(100.0, 100.0));
    _idleAnimation = idleSs.createAnimation(row: 0, stepTime: 0.25);
    _jumpAnimation = jumpSs.createAnimation(row: 0, stepTime: 0.25);
    animation = _idleAnimation;

    return super.onLoad();
  }

  @override
  void update(double dt) {
    animation?.update(dt);
    super.update(dt);
  }
}

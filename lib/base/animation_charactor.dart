import 'package:flame/components.dart';
import 'package:flame/extensions.dart';

class AnimationCharactor extends SpriteAnimationComponent {
  final Image image;
  final int frames;
  final int? amountPerRow;
  final Vector2 textureSize;
  final double stepTime;

  AnimationCharactor({
    required this.image,
    required this.frames,
    required this.textureSize,
    required this.stepTime,
    this.amountPerRow,
    required Vector2 size,
  }) : super(
            size: size,
            animation: SpriteAnimation.fromFrameData(
                image,
                SpriteAnimationData.sequenced(
                  amount: frames,
                  amountPerRow: amountPerRow,
                  textureSize: textureSize,
                  stepTime: stepTime,
                )));
}

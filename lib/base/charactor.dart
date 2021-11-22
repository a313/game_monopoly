import 'package:flame/components.dart';
import 'package:flame/extensions.dart';

class Charactor extends SpriteComponent {
  final Image image;

  Charactor({
    required this.image,
    Vector2? size,
  }) : super(sprite: Sprite(image), size: size);
}

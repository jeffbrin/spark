library spark;

import 'package:flame/cache.dart';
import 'package:flame/components.dart';
import 'package:flame/sprite.dart';

class Visuals {
  static Future<Sprite> getSprite(String name) async {
    return Sprite(await Images().load(name));
  }

  static Future<SpriteAnimation> getAnimation(
      String name, Vector2 spriteDimensions, double stepTime,
      {int startRow = 0,
      int startFrame = 0,
      bool loop = true,
      int? endFrame}) async {
    // Get the sprite sheet
    SpriteSheet spriteSheet = SpriteSheet(
        image: await Images().load(name), srcSize: spriteDimensions);
    // Create the sprite animation
    SpriteAnimation animation = spriteSheet.createAnimation(
        row: startRow,
        stepTime: stepTime,
        loop: loop,
        from: startFrame,
        to: endFrame);

    return animation;
  }
}

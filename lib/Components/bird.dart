import 'package:flame/components.dart';
import 'package:flame_flutter/Game/assets.dart';
import 'package:flame_flutter/Game/bird_movement.dart';
import 'package:flame_flutter/Game/flappy_bird_game.dart';

class Bird extends SpriteGroupComponent<BirdMovement>
    with HasGameRef<FlappyBirdGame> {
  Bird();
  @override
  Future<void> onLoad() async {
    final birdMidFlap = await gameRef.loadSprite(Assets.birdMidFlap);
    final birdUpFlap = await gameRef.loadSprite(Assets.birdMidFlap);
    final birdDownFlap = await gameRef.loadSprite(Assets.birdMidFlap);

    size = Vector2(50, 40);
    position = Vector2(50, gameRef.size.y / 2 - size.y / 2);
    current = BirdMovement.middle;
    sprites = {
      BirdMovement.middle: birdMidFlap,
      BirdMovement.up: birdUpFlap,
      BirdMovement.down: birdDownFlap,
    };
  }
}

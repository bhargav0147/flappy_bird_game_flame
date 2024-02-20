import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame_flutter/Game/assets.dart';
import 'package:flame_flutter/Game/flappy_bird_game.dart';

class Background extends SpriteComponent with HasGameRef<FlappyBirdGame> {
  Background();
  @override
  Future<void> onLoad() async {
    final background = await Flame.images.load(Assets.background);
    size = gameRef.size;
    sprite = Sprite(background);
  }
}

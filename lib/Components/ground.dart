import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/parallax.dart';
import 'package:flame_flutter/Game/assets.dart';
import 'package:flame_flutter/Game/flappy_bird_game.dart';

import '../Game/cpnfiguration.dart';

class Ground extends  ParallaxComponent<FlappyBirdGame> {
  Ground();
  @override
  Future<void> onLoad() async {
    final ground = await Flame.images.load(Assets.ground);
    parallax  = Parallax([
      ParallaxLayer(ParallaxImage(ground, fill: LayerFill.none))
    ]);
  }

  @override
  void update(double dt){
    super.update(dt);
    parallax?.baseVelocity.x = Config.gameSpeed;
  }
}

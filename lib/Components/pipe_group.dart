import 'package:flame/components.dart';
import 'package:flame_flutter/Components/pipe.dart';
import 'package:flame_flutter/Game/cpnfiguration.dart';
import 'package:flame_flutter/Game/flappy_bird_game.dart';
import 'package:flame_flutter/Game/pipe_position.dart';

class Pipegroup extends PositionComponent with HasGameRef<FlappyBirdGame> {
  @override
  Future<void> onLoad() async {
    position.x = gameRef.size.x;

    addAll([
      Pipe(pipePosition: PipePosition.top, height: 100),
      Pipe(pipePosition: PipePosition.bottom, height: 200),
    ]);
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.x -= Config.gameSpeed * dt;
  }
}

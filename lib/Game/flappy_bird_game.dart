import 'dart:async';

import 'package:flame/game.dart';
import 'package:flame_flutter/Components/background.dart';
import 'package:flame_flutter/Components/bird.dart';
import 'package:flame_flutter/Components/ground.dart';
import 'package:flame_flutter/Components/pipe_group.dart';

class FlappyBirdGame extends FlameGame {
  FlappyBirdGame();
  late Bird bird;

  late Timer interval;
  @override
  Future<void> onLoad() async {
    
    addAll([
      Background(),
      Ground(),
      bird = Bird(),
      Pipegroup(),
    ]);
  }

 
}

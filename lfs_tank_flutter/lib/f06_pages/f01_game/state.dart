import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../game.dart';
import 'game.dart';

class GameState {

  final mainGame = Rx<GameWidget>(  GameWidget(
      game: MainGame(),
      mouseCursor:SystemMouseCursors.click
  ));
  // final myGame = Rx<FlameGame>(MyGame());
  GameState() {
    ///Initialize variables
  }
}

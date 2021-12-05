
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';
import 'f04_scene_01/f03_game.dart';
import 'game.dart';
import 'logic.dart';
import 'state.dart';

class GamePage extends StatelessWidget {
  final GameLogic logic = Get.put(GameLogic());
  final GameState state = Get.find<GameLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GameWidget(
      // game: MyGame(context:context),
      // game: Scene01(),
        game: MenuGame(),
      mouseCursor:SystemMouseCursors.help
    );
  //   return Center(
  //     child: RiveAnimation.network(
  //       'https://cdn.rive.app/animations/vehicles.riv',
  //     ),
  //   );
  }
}



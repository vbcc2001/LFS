import 'dart:math' as math;
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'f03_main_menu/f01_main_menu.dart';
import 'game.dart';
import 'logic.dart';
import 'state.dart';

class GamePage extends StatelessWidget {
  final GameLogic logic = Get.put(GameLogic());
  final GameState state = Get.find<GameLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GameWidget(
      game: MyGame(),
      // game: MainMenu(),
    );
  }
}

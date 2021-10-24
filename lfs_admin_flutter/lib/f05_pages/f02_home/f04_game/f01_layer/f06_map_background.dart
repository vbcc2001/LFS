import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_layer_priority.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f02_component/f03_rive_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f02_rive_canvas.dart';
import 'package:rive/rive.dart';
import '../f00_utils/f02_component/f02_component.dart';
import '../game.dart';


class MapBackgroundLayer extends Component with HasGameRef<MyGame>  {

  Size gameSize = Size(0,0);
  @override
  int get priority => LayerPriority.MAPBACKGROUND;

  late RiveCanvas riveCanvas;

  @override
  Future<void> onLoad() async {
    gameSize = Size(gameRef.size.x,gameRef.size.y);
    RiveFile riveFile = await RiveFile.asset('images/star-sky.riv');
    Artboard artboard = riveFile.mainArtboard;
    artboard.advance(0);
    SimpleAnimation animationController =  SimpleAnimation('tower-round');
    riveCanvas = RiveCanvas(artboard: artboard, animationController:animationController, context: gameRef.context);
    animationController.isActive = true;
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    riveCanvas.draw(canvas,gameSize);
  }
}

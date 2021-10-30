import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter/widgets.dart' hide Image;
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_layer_priority.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f02_component/f02_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f02_component/f03_rive_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f02_rive_canvas.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/f01_dungeon_map.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f07_enemy_goblin.dart';
import 'package:rive/rive.dart';
import '../game.dart';


class MapBackgroundLayer extends MyComponent  {

  @override
  int get priority => LayerPriority.MAPBACKGROUND;
  late RiveComponent riveComponent;
  late RiveComponent riveComponent2;
  @override
  Future<void> onLoad() async {
    super.onLoad();
    RiveFile riveFile = await RiveFile.asset('riv/sky.riv');
    SimpleAnimation animationController =  SimpleAnimation('wind');
    position = gameRef.camera.position;
    riveComponent = RiveComponent(riveFile, gameRef.context,artboardName:"02", animationController: animationController,size:Vector2(gameRef.size.x,gameRef.size.y),position: position);
    riveComponent.riveCanvas.fit = BoxFit.fill;
    add(riveComponent);
    RiveFile riveFile4 = await RiveFile.asset('riv/sun.riv');
    RiveComponent f = RiveComponent(riveFile4, gameRef.context,artboardName:"01", size:Vector2(100,100),position: position);
    f.riveCanvas.offset = Offset(300,300);
    add(f);
  }


  @mustCallSuper
  void update(double dt) {
    super.update(dt);
    position = gameRef.camera.position;
  }

}

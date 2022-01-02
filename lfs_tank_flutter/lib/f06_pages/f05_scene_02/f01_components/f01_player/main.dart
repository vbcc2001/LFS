
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart' hide Animation;
import 'package:lfs_tank_flutter/f01_utils/f02_rive_canvas.dart';
import 'package:lfs_tank_flutter/f04_mixin/f02_component.dart';
import 'package:lfs_tank_flutter/f04_mixin/f07_attackable.dart';
import 'package:lfs_tank_flutter/f04_mixin/f11_lighting.dart';

import '../../game.dart' ;
import 'animation.dart';
import 'model.dart';

class Player extends PositionComponent with HasGameRef<MyGame2>,MyComponent,Lighting {

  /// 玩家数据
  final Model playerModel;
  /// 玩家动画
  late Animation playerAnimation;

  late RiveCanvas riveCanvas;

  Player(this.playerModel,Vector2 position): super(position:position, size:Vector2.all(32),);
  @override
  Future<void> onLoad() async {
    super.onLoad();
    // 添加 动画
    playerAnimation = Animation(playerModel.rivePath);
    await playerAnimation.onLoad();
    riveCanvas = RiveCanvas(artboard: playerAnimation.artboard, context: gameRef.context);
    // 添加 Light
    radius=width * 5;
    blurBorder= width * 5;
    color=Colors.transparent;
    gameRef.lightingLayer.lights.add(this);
  }
  @override
  void update(double dt) {
    super.update(dt);
    playerAnimation.artboard.advance(dt);
  }
  @override
  void render(Canvas canvas) {
    super.render(canvas);
    riveCanvas.draw(canvas, size.toSize());
  }

}
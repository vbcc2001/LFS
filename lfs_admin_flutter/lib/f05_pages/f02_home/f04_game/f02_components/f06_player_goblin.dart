
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart' show Colors;
import 'package:flutter/services.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_layer_priority.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_mixin/f02_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_mixin/f11_lighting.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f02_component/f01_joystick.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f02_component/f06_player.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f10_direction_animation.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/collision/object_collision.dart';
import '../f00_utils/f02_component/f06_enemy.dart';
import '../game.dart';

//AutomaticRandomMovement
class PlayerGoblin extends PlayerComponent  with HasGameRef<MyGame>, MyComponentMixin,Lighting,KeyboardHandler {

  static final spriteSize = Vector2(64, 64);
  static final animationMap = {
    DirectionAnimationEnum.idleRight: SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 0.1,
      textureSize: spriteSize,
      texturePosition: Vector2(0,spriteSize.y*1),
    ),
    DirectionAnimationEnum.idleLeft: SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 0.1,
      textureSize: spriteSize,
      texturePosition: Vector2(0,spriteSize.y*3),
    ),
    DirectionAnimationEnum.idleUp: SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 0.1,
      textureSize: spriteSize,
      texturePosition: Vector2(0,spriteSize.y*2),
    ),
    DirectionAnimationEnum.idleDown: SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 0.1,
      textureSize: spriteSize,
      texturePosition: Vector2(0,spriteSize.y*0),
    ),
    DirectionAnimationEnum.runRight: SpriteAnimationData.sequenced(
      amount: 11,
      stepTime: 0.1,
      textureSize: spriteSize,
      texturePosition: Vector2(0,spriteSize.y*1),
    ),
    DirectionAnimationEnum.runLeft: SpriteAnimationData.sequenced(
      amount: 11,
      stepTime: 0.1,
      textureSize: spriteSize,
      texturePosition: Vector2(0,spriteSize.y*3),
    ),
    DirectionAnimationEnum.runUp: SpriteAnimationData.sequenced(
      amount: 11,
      stepTime: 0.1,
      textureSize: spriteSize,
      texturePosition: Vector2(0,spriteSize.y*2),
    ),
    DirectionAnimationEnum.runDown: SpriteAnimationData.sequenced(
      amount: 11,
      stepTime: 0.1,
      textureSize: spriteSize,
      texturePosition: Vector2(0,spriteSize.y*0),
    ),
  };
  final Vector2 velocity = Vector2(0, 0);

  PlayerGoblin({required Joystick joystick,required Image image,required Vector2 position}) : super(joystick:joystick,image:image,position:position,size:spriteSize, spriteAnimationMap:animationMap);

  @override
  Future<void> onLoad() async {
    super.onLoad();
    this.radius=width * 1.5;
    this.blurBorder= width * 1.5;
    this.color=Colors.transparent;
    gameRef.lightingLayer.lights.add(this);
  }

  @override
  void update(double dt) {
    super.update(dt);
    final ds = velocity * (100 * dt);
    position.add(ds);
  }
  @override
  bool onKeyEvent(RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    final isKeyDown = event is RawKeyDownEvent;

    print(event.logicalKey);

    if (event.logicalKey == LogicalKeyboardKey.keyA) {
      velocity.x = isKeyDown ? -1 : 0;
      isKeyDown ? backMove() : backIdle() ;
      return false;
    } else if (event.logicalKey == LogicalKeyboardKey.keyD) {
      velocity.x = isKeyDown ? 1 : 0;
      isKeyDown ? move() : idle() ;
      return false;
    } else if (event.logicalKey == LogicalKeyboardKey.keyW) {
      velocity.y = isKeyDown ? -1 : 0;
      isKeyDown ? up() : idle() ;
      return false;
    } else if (event.logicalKey == LogicalKeyboardKey.keyS) {
      velocity.y = isKeyDown ? 1 : 0;
      isKeyDown ? down() : idle() ;
      return false;
    }
    return super.onKeyEvent(event, keysPressed);
  }

  void idle() {
    this.current = DirectionAnimationEnum.idleRight;
  }
  void backIdle() {
    this.current = DirectionAnimationEnum.idleLeft;
  }
  void move() {
    this.current = DirectionAnimationEnum.runRight;
  }
  void backMove() {
    this.current = DirectionAnimationEnum.runLeft;
  }
  void up() {
    this.current = DirectionAnimationEnum.runUp;
  }
  void down() {
    this.current = DirectionAnimationEnum.runDown;
  }
}



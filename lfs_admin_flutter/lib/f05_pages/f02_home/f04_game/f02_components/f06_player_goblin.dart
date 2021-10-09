
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_layer_priority.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_mixin/f02_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_mixin/f11_lighting.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f02_component/f06_player.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f10_direction_animation.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/collision/object_collision.dart';
import '../f00_utils/f02_component/f06_enemy.dart';

//AutomaticRandomMovement
class PlayerGoblin extends PlayerComponent  with MyComponentMixin,Lighting {

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

  PlayerGoblin({required Image image,required Vector2 position}) : super(image:image,position:position,size:spriteSize, spriteAnimationMap:animationMap);

}



import 'dart:ui';

import 'package:flame/components.dart';
import '../f01_layer_priority.dart';
import '../f07_attackable.dart';
import '../f09_movement.dart';
import '../f10_direction_animation.dart';

class PlayerComponent extends SpriteAnimationGroupComponent with Attackable, Movement<DirectionAnimationEnum>{

  double stamina = 100;

  PlayerComponent({
    required Vector2 position,
    required Vector2 size,
    required Image image,
    required Map<DirectionAnimationEnum, SpriteAnimationData> spriteAnimationMap,
    double life = 100,
    double speed = 100,
  }): super.fromFrameData(image,spriteAnimationMap,priority:LayerPriority.COMPONENTS,position:position,size:size,){
    this.initLife(life);
    this.speed = speed;
    this.receivesAttackFrom = ReceivesAttackFromEnum.PLAYER;
// this.directionAnimation = animation;
    this.current = DirectionAnimationEnum.idleLeft;
  }

}



import 'dart:ui';

import 'package:flame/components.dart';
import 'f01_layer_priority.dart';
import 'f07_attackable.dart';
import 'f09_movement.dart';
import 'f10_direction_animation.dart';

class Player extends SpriteAnimationGroupComponent with Attackable, Movement<DirectionAnimationEnum>{

  double stamina = 100;
  Player({required Image image,required Map<DirectionAnimationEnum, SpriteAnimationData> data}) :
        super.fromFrameData(image,data,priority:LayerPriority.COMPONENTS){
    this.receivesAttackFrom = ReceivesAttackFromEnum.ENEMY;
    this.position = Vector2.all(0);
    this.size = Vector2.all(32);
  }
}
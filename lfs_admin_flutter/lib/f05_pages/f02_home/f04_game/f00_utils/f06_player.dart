
import 'dart:ui';

import 'package:flame/components.dart';
import 'f02_component.dart';
import 'f07_attackable.dart';
import 'f09_movement.dart';
import 'f10_direction_animation.dart';

class Player extends MyComponent with Attackable, Movement<DirectionAnimationEnum>{

  Player({required Image image,required Map<DirectionAnimationEnum, SpriteAnimationData> data}) : super(image:image,data:data){
    this.receivesAttackFrom = ReceivesAttackFromEnum.ENEMY;
    this.position = Vector2.all(0);
    this.size = Vector2.all(32);
  }
}
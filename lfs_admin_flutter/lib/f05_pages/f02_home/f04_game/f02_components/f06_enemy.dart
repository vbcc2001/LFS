import 'dart:ui';

import 'package:flame/components.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/game.dart';
import '../f00_utils/f10_direction_animation.dart';
import '../f00_utils/f02_component.dart';
import '../f00_utils/f07_attackable.dart';
import '../f00_utils/f09_movement.dart';

/// It is used to represent your enemies.
class EnemyComponent extends MyComponent with Movement, Attackable {

  EnemyComponent({
    required Vector2 position,
    required Vector2 size,
    required Image image,
    required Map<DirectionAnimationEnum, SpriteAnimationData> spriteAnimationMap,
    double life = 100,
    double speed = 100,
  }) : super(image:image,data:spriteAnimationMap){
    this.position = position;
    this.size = position;
    this.speed = speed;
    this.initLife(life);
    this.receivesAttackFrom = ReceivesAttackFromEnum.PLAYER;
    // this.directionAnimation = animation;
    this.current = DirectionAnimationEnum.idleRight;
  }
}

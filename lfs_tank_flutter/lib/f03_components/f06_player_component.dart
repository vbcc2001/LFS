
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:lfs_tank_flutter/f01_utils/f01_layer_priority.dart';
import 'package:lfs_tank_flutter/f01_utils/f10_direction_animation.dart';
import 'package:lfs_tank_flutter/f04_mixin/f07_attackable.dart';
import 'package:lfs_tank_flutter/f04_mixin/f09_movement.dart';

class PlayerComponent extends SpriteAnimationGroupComponent with Attackable, Movement<DirectionAnimationEnum>{

  double maxStamina = 100.0;
  double stamina = 100;
  double maxSpeed = 100.0;

  final JoystickComponent joystick;
  @override
  int get priority => LayerPriority.components;
  PlayerComponent({
    required this.joystick,
    required Vector2 position,
    required Vector2 size,
    required Image image,
    required Map<DirectionAnimationEnum, SpriteAnimationData> spriteAnimationMap,
    double life = 100,
    double speed = 100,
  }): super.fromFrameData(image,spriteAnimationMap,position:position,size:size,){
    this.initLife(life);
    this.speed = speed;
    this.receivesAttackFrom = ReceivesAttackFromEnum.player;
// this.directionAnimation = animation;
    this.current = DirectionAnimationEnum.idleLeft;
  }

  @override
  void update(double dt) {
    super.update(dt);
    if (!joystick.delta.isZero()) {
      position.add(joystick.relativeDelta * maxSpeed * dt);
      // angle = joystick.delta.screenAngle();
    }
  }
}


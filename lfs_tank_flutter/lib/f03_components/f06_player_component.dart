
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:lfs_tank_flutter/f04_mixin/f09_movement.dart';

class PlayerComponent extends SpriteAnimationGroupComponent with Attackable, Movement<DirectionAnimationEnum>{

  double maxStamina = 100.0;
  double stamina = 100;
  double maxSpeed = 100.0;

  final JoystickComponent joystick;

  PlayerComponent({
    required this.joystick,
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

  @override
  void update(double dt) {
    super.update(dt);
    if (!joystick.delta.isZero()) {
      position.add(joystick.relativeDelta * maxSpeed * dt);
      // angle = joystick.delta.screenAngle();
    }
  }
}


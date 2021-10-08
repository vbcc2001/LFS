import 'dart:ui';

import 'package:flame/components.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_layer_priority.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/game.dart';
import '../f00_utils/f10_direction_animation.dart';
import '../f00_utils/f02_component.dart';
import '../f00_utils/f07_attackable.dart';
import '../f00_utils/f09_movement.dart';

/// It is used to represent your enemies.
class EnemyComponent extends SpriteAnimationGroupComponent with Movement, Attackable {

  EnemyComponent({
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
    this.current = DirectionAnimationEnum.idleRight;
  }
  // @override
  // int get priority => LayerPriority.COMPONENTS;
  // int get priority => 12000;

  // @override
  // Future<void> onLoad() async {
  //   // super.onLoad();
  //   // Image image = await Flame.images.load(imgPath);
  //   // var s = SpriteAnimationGroupComponent.fromFrameData(image,data,priority:LayerPriority.COMPONENTS,position:position,size:size);
  //   // add(s);
  //   // current = s.current;
  // }
}

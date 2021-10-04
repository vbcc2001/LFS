
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f10_direction_animation.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/collision/object_collision.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f06_enemy.dart';

//AutomaticRandomMovement
class Goblin extends EnemyComponent with ObjectCollision  {

  bool _seePlayerClose = false;
  bool _seePlayerAway = false;
  bool enableBehaviors = true;

  static final spriteSize = Vector2(96, 96);
  static final _animationMap = {
    DirectionAnimationEnum.idleRight: SpriteAnimationData.sequenced(
      amount: 5,
      stepTime: 0.1,
      textureSize: spriteSize,
    ),
    DirectionAnimationEnum.idleLeft: SpriteAnimationData.sequenced(
      amount: 5,
      stepTime: 0.1,
      textureSize: spriteSize,
      texturePosition: Vector2(0,spriteSize.y*10),
    ),
    DirectionAnimationEnum.idleUp: SpriteAnimationData.sequenced(
      amount: 5,
      stepTime: 0.1,
      textureSize: spriteSize,
    ),
    DirectionAnimationEnum.idleDown: SpriteAnimationData.sequenced(
      amount: 5,
      stepTime: 0.1,
      textureSize: spriteSize,
      texturePosition: Vector2(0,spriteSize.y*10),
    ),
    DirectionAnimationEnum.runRight: SpriteAnimationData.sequenced(
      amount: 8,
      stepTime: 0.1,
      textureSize: spriteSize,
      texturePosition: Vector2(0,spriteSize.y*1),
    ),
    DirectionAnimationEnum.runLeft: SpriteAnimationData.sequenced(
      amount: 8,
      stepTime: 0.1,
      textureSize: spriteSize,
      texturePosition: Vector2(0,spriteSize.y*11),
    ),
    DirectionAnimationEnum.runUp: SpriteAnimationData.sequenced(
      amount: 8,
      stepTime: 0.1,
      textureSize: spriteSize,
      texturePosition: Vector2(0,spriteSize.y*1),
    ),
    DirectionAnimationEnum.runDown: SpriteAnimationData.sequenced(
      amount: 8,
      stepTime: 0.1,
      textureSize: spriteSize,
      texturePosition: Vector2(0,spriteSize.y*11),
    ),
  };

  Goblin({required Image image,required Vector2 position}) : super(position:position,size:Vector2.all(32),image:image, spriteAnimationMap:_animationMap){
    // setupCollision(
    //   CollisionConfig(
    //     collisions: [
    //       CollisionArea.rectangle(
    //         size: Size(
    //           DungeonMap.tileSize * 0.4,
    //           DungeonMap.tileSize * 0.4,
    //         ),
    //         align: Vector2(
    //           DungeonMap.tileSize * 0.2,
    //           DungeonMap.tileSize * 0.2,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
  // @override
  // Future<void> onLoad() async {
  //   final image = await Flame.images.load('enemies/goblin.png');
  //
  // }



  // @override
  // void update(double dt) {
  //   super.update(dt);
  //   if (this.isDead) return;
  //   if (!enableBehaviors) return;
  //
  //   _seePlayerClose = false;
  //   _seePlayerAway = false;
  //
  //   this.seePlayer(
  //     observed: (player) {
  //       _seePlayerClose = true;
  //       this.seeAndMoveToPlayer(
  //         closePlayer: (player) {
  //           execAttack();
  //         },
  //         radiusVision: DungeonMap.tileSize * 1.5,
  //       );
  //     },
  //     radiusVision: DungeonMap.tileSize * 1.5,
  //   );
  //
  //   if (!_seePlayerClose) {
  //     seePlayer(
  //       radiusVision: DungeonMap.tileSize * 3,
  //       observed: (p) {
  //         _seePlayerAway = true;
  //         this.seeAndMoveToAttackRange(
  //           minDistanceFromPlayer: DungeonMap.tileSize * 2,
  //           positioned: (p) {
  //             execAttackRange();
  //           },
  //           radiusVision: DungeonMap.tileSize * 3,
  //         );
  //       },
  //     );
  //   }
  //
  //   if (!_seePlayerAway && !_seePlayerClose) {
  //     runRandomMovement(
  //       dt,
  //       speed: speed / 2,
  //       maxDistance: (DungeonMap.tileSize * 3).toInt(),
  //     );
  //   }
  // }

  // @override
  // void render(Canvas canvas) {
  //   super.render(canvas);
  //   this.drawDefaultLifeBar(
  //     canvas,
  //     borderRadius: BorderRadius.circular(5),
  //     borderWidth: 2,
  //   );
  // }

  @override
  void die() {
    // gameRef.add(AnimatedObjectOnce(animation: CommonSpriteSheet.smokeExplosion, position: position,),);
    removeFromParent();
    super.die();
  }

  // void execAttackRange() {
  //   if (gameRef.player != null && gameRef.player?.isDead == true) return;
  //   this.simpleAttackRange(
  //     animationRight: CommonSpriteSheet.fireBallRight,
  //     animationLeft: CommonSpriteSheet.fireBallLeft,
  //     animationUp: CommonSpriteSheet.fireBallTop,
  //     animationDown: CommonSpriteSheet.fireBallBottom,
  //     animationDestroy: CommonSpriteSheet.explosionAnimation,
  //     id: 35,
  //     width: width * 0.9,
  //     height: width * 0.9,
  //     damage: attack,
  //     speed: DungeonMap.tileSize * 3,
  //     collision: CollisionConfig(
  //       collisions: [
  //         CollisionArea.rectangle(
  //           size: Size(width / 2, width / 2),
  //           align: Vector2(width * 0.25, width * 0.25),
  //         ),
  //       ],
  //     ),
  //     lightingConfig: LightingConfig(
  //       radius: width / 2,
  //       blurBorder: width,
  //       color: Colors.orange.withOpacity(0.3),
  //     ),
  //   );
  // }

  // void execAttack() {
  //   if (gameRef.player != null && gameRef.player?.isDead == true) return;
  //   this.simpleAttackMelee(
  //     height: width,
  //     width: width,
  //     damage: attack / 2,
  //     interval: 400,
  //     sizePush: DungeonMap.tileSize / 2,
  //     attackEffectBottomAnim: CommonSpriteSheet.blackAttackEffectBottom,
  //     attackEffectLeftAnim: CommonSpriteSheet.blackAttackEffectLeft,
  //     attackEffectRightAnim: CommonSpriteSheet.blackAttackEffectRight,
  //     attackEffectTopAnim: CommonSpriteSheet.blackAttackEffectTop,
  //   );
  // }

  // @override
  // void receiveDamage(double damage, dynamic from) {
  //   this.showDamage(
  //     damage,
  //     config: TextPaintConfig(
  //       fontSize: width / 3,
  //       color: Colors.white,
  //     ),
  //   );
  //   super.receiveDamage(damage, from);
  // }

  // @override
  // void joystickAction(JoystickActionEvent event) {
  //   // TODO: implement joystickAction
  // }
  //
  // @override
  // void moveTo(Vector2 position) {}
}




// class GoblinSpriteSheet {
//   static Future<SpriteAnimation> get idleLeft => SpriteAnimation.load(
//     "enemy/goblin_idle_left.png",
//     SpriteAnimationData.sequenced(
//       amount: 6,
//       stepTime: 0.1,
//       textureSize: Vector2(16, 16),
//     ),
//   );
//
//   static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
//     "enemy/goblin_idle.png",
//     SpriteAnimationData.sequenced(
//       amount: 6,
//       stepTime: 0.1,
//       textureSize: Vector2(16, 16),
//     ),
//   );
//
//   static Future<SpriteAnimation> get runRight => SpriteAnimation.load(
//     "enemy/goblin_run_right.png",
//     SpriteAnimationData.sequenced(
//       amount: 6,
//       stepTime: 0.1,
//       textureSize: Vector2(16, 16),
//     ),
//   );
//
//   static Future<SpriteAnimation> get runLeft => SpriteAnimation.load(
//     "enemy/goblin_run_left.png",
//     SpriteAnimationData.sequenced(
//       amount: 6,
//       stepTime: 0.1,
//       textureSize: Vector2(16, 16),
//     ),
//   );
//
//   static SimpleDirectionAnimation get simpleDirectionAnimation =>
//       SimpleDirectionAnimation(
//         idleLeft: idleLeft,
//         idleRight: idleRight,
//         runLeft: runLeft,
//         runRight: runRight,
//       );
// }

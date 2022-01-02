import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flame/geometry.dart';
import 'package:flutter/material.dart';
import 'package:lfs_tank_flutter/f01_utils/f01_layer_priority.dart';
import 'package:lfs_tank_flutter/f01_utils/f03_game.dart';
import 'package:lfs_tank_flutter/f01_utils/f03_interval_tick.dart';
import 'package:lfs_tank_flutter/f03_components/f06_player_tank.dart';
import 'package:lfs_tank_flutter/f04_mixin/f02_component.dart';
import 'package:lfs_tank_flutter/f04_mixin/f07_attackable.dart';
import 'package:lfs_tank_flutter/f04_mixin/f09_movement.dart';
import 'package:lfs_tank_flutter/f04_mixin/f11_lighting.dart';
import 'package:rive/rive.dart';

import '../f06_pages/f04_scene_01/game.dart';
import 'f01_flying_attack_component.dart';
import 'f02_text_damage_component.dart';
import 'f03_rive_component.dart';

class EnemySlimeComponent extends PositionComponent with HasGameRef<MyGame>,MyComponent,Lighting,HasHitboxes,Collidable,Attackable {

  bool _isCollision = false;

  @override
  int get priority => LayerPriority.components;

  EnemySlimeComponent({required Vector2 position}): super(size:Vector2(40,32),position:position){
      addHitbox(HitboxRectangle());
    }
  @override
  Future<void> onLoad() async {
    super.onLoad();
    // debugMode = true;
    RiveFile riveFile1 = await RiveFile.asset('assets/rives/slime.riv');
    SimpleAnimation animationController =  SimpleAnimation('idle');
    RiveComponent a = RiveComponent(riveFile1, gameRef.context, animationController: animationController,artboardName:"01",size:Vector2(40,32));
    add(a);
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    drawDefaultLifeBar(canvas);
  }

  @override
  void die(){
    super.die();
    removeFromParent();
  }
  @override
  void damage(double damage){
    super.damage(damage);
    var style = const TextStyle(fontSize: 14, color: Colors.white,);
    var textDamageComponent = TextDamageComponent(damage.toInt().toString(),Vector2(position.x+size.x/2,position.y) ,style: style);
    gameRef.add(textDamageComponent);
    if(life == 0) die();
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, Collidable other) {
    _isCollision = true;
    if(other is FlyingAttackComponent){
      damage(other.damage);
    }
  }
}

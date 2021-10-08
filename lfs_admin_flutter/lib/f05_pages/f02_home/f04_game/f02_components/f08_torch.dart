import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f17_sprite_animation_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f03_mixin/f11_lighting.dart';

class Torch extends MySpriteAnimationComponent with Lighting {

  Torch({required Vector2 position}) : super(
    imgPath:"itens/torch_spritesheet.png",
    data:SpriteAnimationData.sequenced(
      amount: 6,
      stepTime: 0.1,
      textureSize: Vector2(16, 16),
    ),
    position:position,
    size: Vector2(45, 45),
  ){
    this.radius = width * 1.5;
    this.blurBorder =  width * 1.5;
    this.color= Colors.deepOrangeAccent.withOpacity(0.2);
  }

}

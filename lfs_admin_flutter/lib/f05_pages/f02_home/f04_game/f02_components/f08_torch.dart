import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flutter/material.dart' show Colors;
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_mixin/f02_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_mixin/f11_lighting.dart';

import '../game.dart';

class Torch extends SpriteAnimationComponent with HasGameRef<MyGame>, MyComponentMixin ,Lighting {

  Torch({ required Vector2 position}) : super( position:position );

  @override
  Future<void> onLoad() async {
    super.onLoad();
    var image = await Flame.images.load("itens/torch_spritesheet.png");
    var data = SpriteAnimationData.sequenced(amount: 6, stepTime: 0.1, textureSize: Vector2(16, 16) );
    this.animation = SpriteAnimation.fromFrameData(image, data) ;
    this.size = Vector2(45, 45);
    this.radius = width * 1.5;
    this.blurBorder =  width * 1.5;
    this.color= Colors.deepOrangeAccent.withOpacity(0.2);
    gameRef.lightingLayer.lights.add(this);
  }

}

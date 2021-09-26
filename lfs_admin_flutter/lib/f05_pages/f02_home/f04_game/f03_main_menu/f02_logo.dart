import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';

class LogoSprite extends SpriteComponent{

  Future<void> onLoad() async {
    Image image = await Flame.images.load('flare/logo.png');
    this.sprite =  Sprite(image);
    this.size = Vector2(116, 54);
  }
}

import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import '../game.dart';
import 'f01_mixin/f02_component.dart';

class MySpriteAnimationComponent extends SpriteAnimationComponent with HasGameRef<MyGame>, MyComponentMixin {

  String imgPath;
  SpriteAnimationData data;
  MySpriteAnimationComponent({ required this.imgPath, required this.data, required Vector2 position,required Vector2 size }) : super(
      position:position,
      size:size,
  );
  @override
  Future<void> onLoad() async {
    Image image = await Flame.images.load(imgPath);
    this.animation = SpriteAnimation.fromFrameData(image, data) ;
    super.onLoad();
  }
}

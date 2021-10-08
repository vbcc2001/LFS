import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';

class MySpriteComponent extends SpriteComponent {

    String imgPath;
    MySpriteComponent({required Vector2 position, required Vector2 size, required this.imgPath,}) : super(position:position, size:size);

    @override
    Future<void> onLoad() async {
      Image image = await Flame.images.load(imgPath);
      this.sprite = Sprite(image);
      super.onLoad();
    }
}

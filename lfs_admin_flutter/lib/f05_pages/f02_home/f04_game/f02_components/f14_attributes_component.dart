import 'package:flame/components.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f02_component/f09_interface_component.dart';

class AttributesComponent extends SpriteComponent {

  @override
  bool get isHud => true;

  AttributesComponent() : super(
    size: Vector2(80,160),
    position: Vector2(200, 60),
  );

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('f03_backpack_set.png');
  }

}

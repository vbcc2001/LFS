import 'package:flame/components.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f02_component/f09_interface_component.dart';

class AttributesComponent extends InterfaceComponent {


  AttributesComponent(int id) : super(
    id: id,
    sprite: Sprite.load('f03_backpack_set.png'),
    spriteSelected: Sprite.load('f03_backpack_set.png'),
    size: Vector2(80,160),
    position: Vector2(200, 60),
  );
}

import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_layer_priority.dart';
import '../f00_utils/f02_component/f16_sprite_component.dart';


class MapDecoration extends PositionComponent {

  List<Component>  decorations = [];
  MapDecoration({required this.decorations, Vector2? position }):super(position:position,priority:LayerPriority.DECORATION,);

  @override
  Future<void> onLoad() async {
    decorations.forEach((element)  => add(element));
  }
}

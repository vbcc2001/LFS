import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/palette.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_layer_priority.dart';

class SelectorComponent extends PositionComponent {
  // @override
  // bool get isHud => true;
  @override
  int get priority => LayerPriority.SelectorPriority;
  bool show = false;
  Paint paint = BasicPalette.green.withAlpha(100).paint();
  @override
  void render(Canvas canvas) {
    if (show) {
      var rect = Rect.fromLTWH(this.position.x,this.position.y, 32.0, 32.0,);
      // print(rect);
      canvas.drawRect(rect, paint);
    }
  }
}
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/palette.dart';
import 'package:lfs_tank_flutter/f01_utils/f01_layer_priority.dart';

class SelectorComponent extends PositionComponent {

  @override
  int get priority => LayerPriority.selectorPriority;
  bool show = false;
  Paint paint = BasicPalette.green.withAlpha(100).paint();
  @override
  void render(Canvas canvas) {
    super.render(canvas);
    if (show) {
      var rect = Rect.fromLTWH(position.x,position.y, 32.0, 32.0,);
      canvas.drawRect(rect, paint);
    }
  }
}
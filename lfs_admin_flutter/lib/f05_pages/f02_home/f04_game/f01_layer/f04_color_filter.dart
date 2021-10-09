import 'dart:ui';


import 'package:flame/components.dart';

import '../game.dart';
import '../f00_utils/f01_layer_priority.dart';


class ColorFilterLayer extends Component with HasGameRef<MyGame> {

  final Color color;
  final BlendMode blendMode;

  ColorFilterLayer(this.color,this.blendMode);

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.save();
    canvas.drawColor(color, blendMode,);
    canvas.restore();
  }

  @override
  int get priority => LayerPriority.getColorFilterPriority(gameRef.highestPriority);
}
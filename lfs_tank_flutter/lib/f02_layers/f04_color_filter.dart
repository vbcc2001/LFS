import 'dart:ui';

import 'package:flame/components.dart';
import 'package:lfs_tank_flutter/f01_utils/f01_layer_priority.dart';

import '../game.dart';

class ColorFilterLayer extends Component with HasGameRef<MyGame> {

  final Color color;
  final BlendMode blendMode;
  @override
  int get priority => LayerPriority.colorFilterPriority;

  ColorFilterLayer(this.color,this.blendMode);

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.save();
    canvas.drawColor(color, blendMode,);
    canvas.restore();
    if(gameRef.debugMode){

    }
  }

  @override
  Paint get debugPaint => Paint()..color = debugColor..strokeWidth = 1..style = PaintingStyle.stroke;
  @override
  TextPaint get debugTextPaint => TextPaint(config: TextPaintConfig(color: debugColor, fontSize: 12,),);

}
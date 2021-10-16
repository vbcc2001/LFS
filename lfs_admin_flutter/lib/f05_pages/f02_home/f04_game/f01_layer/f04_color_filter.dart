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
    if(gameRef.debugMode){

    }
  }

  Paint get debugPaint => Paint()..color = debugColor..strokeWidth = 1..style = PaintingStyle.stroke;
  TextPaint get debugTextPaint => TextPaint(config: TextPaintConfig(color: debugColor, fontSize: 12,),);

  @override
  int get priority => LayerPriority.ColorFilterPriority;
}
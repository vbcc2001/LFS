import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:lfs_tank_flutter/f01_utils/f01_layer_priority.dart';
import '../game.dart';

class BackgroundLayer extends Component with HasGameRef<MyGame>  {

  final Color color = const Color(0xFF263238) ;
  @override
  int get priority => LayerPriority.background;
  
  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.save();
    canvas.drawColor(color, BlendMode.src);
    canvas.restore();
  }
}



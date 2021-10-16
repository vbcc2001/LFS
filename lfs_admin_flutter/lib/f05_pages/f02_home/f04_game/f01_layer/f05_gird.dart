import 'dart:async';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';


import '../f00_utils/f01_layer_priority.dart';
import '../game.dart';

class BackgroundLayer extends Component with HasGameRef<MyGame>  {

  Color color = Color(0xFF263238) ;
  Size size = Size(0,0);
  int column = 0;
  int row = 0 ;
  static const double gridSize = 32 ;
  //網格
  final paint = Paint()
    ..isAntiAlias = true
    ..style = PaintingStyle.stroke //线
    ..color = Color(0xffe1e9f0)
    ..strokeWidth = 0.5;
  BackgroundLayer():super(priority:LayerPriority.BACKGROUND){
    // this.isHud = true;
  }

  @override
  Future<void> onLoad() async {
    size = Size(gameRef.size.x,gameRef.size.y);
    row = ( gameRef.size.x / gridSize ).ceil() + 1;
    column = ( gameRef.size.y / gridSize ).ceil() + 1;
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.save();
    canvas.drawColor(color, BlendMode.src);
    // for (int i = 0; i <= column; ++i) {
    //   double dy = gridSize * i;
    //   canvas.drawLine(Offset(0, dy), Offset(size.width, dy), paint);
    // }
    // for (int i = 0; i <= row; ++i) {
    //   double dx = gridSize * i;
    //   canvas.drawLine(Offset(dx, 0), Offset(dx, size.height), paint);
    // }
    canvas.restore();
  }
}



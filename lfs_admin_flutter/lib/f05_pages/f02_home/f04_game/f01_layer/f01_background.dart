import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../f00_utils/f01_layer_priority.dart';

class BackgroundLayer extends Component {

  final Color color;
  BackgroundLayer(this.color):super(priority:LayerPriority.BACKGROUND);

  @override
  void render(Canvas canvas) {
    canvas.drawColor(color, BlendMode.src);
    super.render(canvas);
  }
}



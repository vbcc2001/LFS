import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../f00_utils/f01_layer_priority.dart';

class BackgroundComponent extends Component {

  final Color color = Colors.black;
  @override
  void render(Canvas canvas) {
    canvas.drawColor(
      color,
      BlendMode.src,
    );
  }
  @override
  int get priority => LayerPriority.BACKGROUND;

  @override
  bool get isHud => true;
}



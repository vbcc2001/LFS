import 'dart:ui';


import 'package:flame/components.dart';
import 'package:flutter/animation.dart';

import '../game.dart';
import 'f01_layer_priority.dart';


class ColorFilterComponent extends Component with HasGameRef<MyGame> {

  // final GameColorFilter colorFilter;
  //
  // ColorFilterComponent(this.colorFilter);
  //
  // @override
  // void render(Canvas canvas) {
  //   canvas.save();
  //   canvas.drawColor(colorFilter.color, colorFilter.blendMode,);
  //   canvas.restore();
  // }
  //
  // @override
  // int get priority {
  //   return LayerPriority.getColorFilterPriority(gameRef.highestPriority);
  // }
}


// class GameColorFilter  with HasGameRef<MyGame> {
//
//   Color color;
//   BlendMode blendMode;
//   ColorTween? _tween;
//
//   GameColorFilter({required this.color, required this.blendMode});
//
//   // bool get enable => color != null && blendMode != null;
//
//   void animateTo(
//       Color color,
//       BlendMode blendMode, {
//         Duration duration = const Duration(milliseconds: 500),
//         Curve curve = Curves.decelerate,
//       }) {
//     this.blendMode = blendMode;
//     _tween = ColorTween(begin: this.color ?? Colors.transparent, end: color);
//
//     gameRef.getValueGenerator(
//       duration,
//       onChange: (value) {
//         this.color = _tween?.transform(value);
//       },
//       onFinish: () {
//         this.color = color;
//       },
//       curve: curve,
//     ).start();
//   }
// }
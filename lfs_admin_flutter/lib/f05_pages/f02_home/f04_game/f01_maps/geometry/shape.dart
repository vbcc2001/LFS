import 'dart:ui';

import 'package:flame/components.dart';
import '../collision/shape_collision.dart';

abstract class Shape {
  Vector2 _position;

  Shape(Vector2 position) : _position = position;

  // ignore: unnecessary_getters_setters
  set position(Vector2 value) {
    _position = value;
  }

  // ignore: unnecessary_getters_setters
  Vector2 get position => _position;

  void render(Canvas canvas, Paint paint);

  bool isCollision(Shape b) {
    return ShapeCollision.isCollision(this, b);
  }
}

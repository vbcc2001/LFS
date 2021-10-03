import 'dart:ui';

import 'package:flame/components.dart';
import 'shape.dart';

class RectangleShape extends Shape {
  Rect _rect;
  late Vector2 leftTop;
  late Vector2 rightTop;
  late Vector2 rightBottom;
  late Vector2 leftBottom;

  RectangleShape(Size size, {Vector2? position})
      : _rect = Rect.fromLTWH(
          position?.x ?? 0,
          position?.y ?? 0,
          size.width,
          size.height,
        ),
        super(position ?? Vector2.zero()) {
    _updateExtremities(this.position);
  }

  @override
  set position(Vector2 value) {
    super.position = value;
    _rect = Rect.fromLTWH(
      value.x,
      value.y,
      _rect.width,
      _rect.height,
    );
    _updateExtremities(value);
  }

  void _updateExtremities(Vector2 value) {
    this.leftTop = value;
    this.rightTop = Vector2(value.x+_rect.width, value.y+0);
    this.rightBottom = Vector2(value.x+_rect.width, value.y+_rect.height);
    this.leftBottom = Vector2(value.x+0, value.y+_rect.height);
  }

  Rect get rect => _rect;

  double get height => _rect.height;
  double get width => _rect.width;
  double get left => _rect.left;
  double get top => _rect.top;
  double get right => _rect.right;
  double get bottom => _rect.bottom;

  @override
  void render(Canvas canvas, Paint paint) {
    canvas.drawRect(rect, paint);
  }
}

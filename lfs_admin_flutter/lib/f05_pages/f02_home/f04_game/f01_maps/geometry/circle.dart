import 'dart:ui';

import 'package:flame/components.dart';
import 'rectangle.dart';
import 'shape.dart';

class CircleShape extends Shape {
  final double radius;
  final RectangleShape rect;
  Vector2 center;
  Offset offsetToDraw;

  CircleShape(this.radius, {Vector2? position}):
        this.center = Vector2((position ?? Vector2.zero()).x+radius, (position ?? Vector2.zero()).y+radius),
        this.offsetToDraw = Offset((position ?? Vector2.zero()).x + radius,
            (position ?? Vector2.zero()).y + radius),
        this.rect = RectangleShape(
          Size(2 * radius, 2 * radius),
          position: position,
        ),
        super(position ?? Vector2.zero());

  @override
  set position(Vector2 value) {
    super.position = value;

    rect.position = value;
    center = Vector2(value.x+radius, value.y+radius);
    offsetToDraw = Offset(position.x + radius, position.y + radius);
  }

  @override
  void render(Canvas canvas, Paint paint) {
    canvas.drawCircle(
      Offset(position.x + radius, position.y + radius),
      radius,
      paint,
    );
  }
}

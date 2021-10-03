
import 'dart:ui';
import 'package:flame/components.dart';
import '../geometry/circle.dart';
import '../geometry/polygon.dart';
import '../geometry/rectangle.dart';
import '../geometry/shape.dart';

Paint _paintCollision = Paint();

class CollisionArea {
  final Shape shape;
  final Vector2? align;

  CollisionArea.rectangle({
    required Size size,
    Vector2? align,
  })  : shape = RectangleShape(size),
        align = align ?? Vector2.zero();

  CollisionArea.circle({
    required double radius,
    Vector2? align,
  })  : shape = CircleShape(radius),
        align = align ?? Vector2.zero();

  CollisionArea.polygon({
    required List<Vector2> points,
    Vector2? align,
  })  : shape = PolygonShape(points),
        align = align ?? Vector2.zero();

  // CollisionArea.fromVector2Rect({
  //   required Vector2Rect rect,
  //   Vector2? align,
  // })  : shape = RectangleShape(Size(rect.size.x, rect.size.y)),
  //       align = align ?? Vector2.zero();

  void updatePosition(Vector2 position) {
    shape.position = Vector2(
      position.x + (align?.x ?? 0.0),
      position.y + (align?.y ?? 0.0),
    );
  }

  void render(Canvas c, Color color) {
    shape.render(c, _paintCollision..color = color);
  }

  bool verifyCollision(CollisionArea other) {
    return shape.isCollision(other.shape);
  }

  bool verifyCollisionSimulate(Vector2 position, CollisionArea other) {
    Shape? shapeAux;
    if (shape is CircleShape) {
      shapeAux = CircleShape(
        (shape as CircleShape).radius,
      );
    } else if (shape is RectangleShape) {
      shapeAux = RectangleShape(
        (shape as RectangleShape).rect.size,
      );
    } else if (shape is PolygonShape) {
      shapeAux = PolygonShape(
        (shape as PolygonShape).relativePoints,
      );
    }

    shapeAux?.position = Vector2(
      position.x + (align?.x ?? 0.0),
      position.y + (align?.y ?? 0.0),
    );
    return shapeAux?.isCollision(other.shape) ?? false;
  }

  Rect get rect {
    if (shape is CircleShape) {
      return (shape as CircleShape).rect.rect;
    }

    if (shape is RectangleShape) {
      return (shape as RectangleShape).rect;
    }

    if (shape is PolygonShape) {
      return (shape as PolygonShape).rect.rect;
    }

    return Rect.zero;
  }

  factory CollisionArea.fromMap(Map<String, dynamic> map) {
    Vector2 align = Vector2(
      map['align']['x'],
      map['align']['y'],
    );
    if (map['shape']['type'] == 'RectangleShape') {
      return CollisionArea.rectangle(
          size: Size(
            map['shape']['size']['width'],
            map['shape']['size']['height'],
          ),
          align: align);
    }

    if (map['shape']['type'] == 'CircleShape') {
      return CollisionArea.circle(radius: map['shape']['radius'], align: align);
    }

    if (map['shape']['type'] == 'PolygonShape') {
      return CollisionArea.polygon(
          points: (map['shape']['points'] as List).map((e) {
            return Vector2(e['x'], e['y']);
          }).toList(),
          align: align);
    }

    return CollisionArea.rectangle(
      size: Size.zero,
      align: align,
    );
  }

  Map<String, dynamic> toMap() {
    Map shape = Map();
    if (this.shape is RectangleShape) {
      RectangleShape s = this.shape as RectangleShape;
      shape['type'] = 'RectangleShape';
      shape['size'] = {'width': s.width, 'height': s.height};
    }

    if (this.shape is CircleShape) {
      CircleShape s = this.shape as CircleShape;
      shape['type'] = 'CircleShape';
      shape['radius'] = s.radius;
    }

    if (this.shape is PolygonShape) {
      PolygonShape s = this.shape as PolygonShape;
      shape['type'] = 'PolygonShape';
      shape['points'] = s.relativePoints.map((e) {
        return {'x': e.x, 'y': e.y};
      }).toList();
    }

    return {
      'shape': shape,
      'align': {'x': this.align?.x ?? 0.0, 'y': this.align?.y ?? 0.0},
    };
  }
}
import 'dart:ui';



class CollisionConfig {
  // /// Representing the collision area
  // final Iterable<CollisionArea> collisions;
  //
  // bool collisionOnlyVisibleScreen = true;
  // bool enable;
  //
  // Vector2Rect? _lastPosition;
  //
  // Vector2Rect vector2rect = Vector2Rect.zero();
  //
  // CollisionConfig({
  //   required this.collisions,
  //   this.enable = true,
  // });
  //
  // Rect get rect => vector2rect.rect;
  //
  // bool verifyCollision(CollisionConfig? other, {Vector2? position}) {
  //   if (other == null) return false;
  //   for (final element1 in collisions) {
  //     for (final element2 in other.collisions) {
  //       if (position != null
  //           ? element1.verifyCollisionSimulate(position, element2)
  //           : element1.verifyCollision(element2)) {
  //         return true;
  //       }
  //     }
  //   }
  //   return false;
  // }
  //
  // void updatePosition(Vector2Rect position) {
  //   if (collisions.isNotEmpty && position != _lastPosition) {
  //     collisions.first.updatePosition(position);
  //     Rect? _rect;
  //     for (final element in collisions) {
  //       element.updatePosition(position);
  //       if (_rect == null) {
  //         _rect = element.rect;
  //       } else {
  //         _rect = _rect.expandToInclude(element.rect);
  //       }
  //     }
  //     _lastPosition = position;
  //     vector2rect = Vector2Rect.fromRect(_rect!);
  //   }
  // }
}

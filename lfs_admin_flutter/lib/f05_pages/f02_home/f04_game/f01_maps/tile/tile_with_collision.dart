import 'package:flame/components.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/collision/collision_area.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/collision/object_collision.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/tile/tile.dart';

import '../controlled_update_animation.dart';

class TileWithCollision extends Tile  {
  TileWithCollision(
      String spritePath,
      Vector2 position, {
        double width = 32,
        double height = 32,
        String? type,
        Iterable<CollisionArea>? collisions,
        double offsetX = 0,
        double offsetY = 0,
        Map<String, dynamic>? properties,
      }) : super(
    spritePath,
    position,
    width: width,
    height: height,
    type: type,
    properties: properties,
  ) {
    collisions?.let((c) {
      setupCollision(CollisionConfig(collisions: c));
    });
  }

  TileWithCollision.fromSprite(
      Sprite sprite,
      Vector2 position, {
        double width = 32,
        double height = 32,
        String? type,
        Iterable<CollisionArea>? collisions,
        double offsetX = 0,
        double offsetY = 0,
        Map<String, dynamic>? properties,
      }) : super.fromSprite(
    sprite,
    position,
    width: width,
    height: height,
    type: type,
    properties: properties,
  ) {
    collisions?.let((c) {
      setupCollision(CollisionConfig(collisions: c));
    });
  }

  TileWithCollision.fromFutureSprite(
      Future<Sprite> sprite,
      Vector2 position, {
        double width = 32,
        double height = 32,
        String? type,
        Iterable<CollisionArea>? collisions,
        double offsetX = 0,
        double offsetY = 0,
        Map<String, dynamic>? properties,
      }) : super.fromFutureSprite(
    sprite,
    position,
    width: width,
    height: height,
    type: type,
    properties: properties,
  ) {
    collisions?.let((c) {
      setupCollision(CollisionConfig(collisions: c));
    });
  }

  TileWithCollision.withAnimation(
      ControlledUpdateAnimation animation,
      Vector2 position, {
        double width = 32,
        double height = 32,
        String? type,
        Iterable<CollisionArea>? collisions,
        double offsetX = 0,
        double offsetY = 0,
        Map<String, dynamic>? properties,
      }) : super.fromAnimation(
    animation,
    position,
    width: width,
    height: height,
    type: type,
    properties: properties,
  ) {
    collisions?.let((c) {
      setupCollision(CollisionConfig(collisions: c));
    });
  }
}

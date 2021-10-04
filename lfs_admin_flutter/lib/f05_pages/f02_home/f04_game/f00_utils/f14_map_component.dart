import 'dart:ui';

import 'package:flame/components.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/collision/object_collision.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/tile/tile.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/tile/tile_model.dart';

import '../game.dart';
import 'f01_layer_priority.dart';
import 'f05_game_ref.dart';

abstract class MapComponent extends Component with MyHasGameRef<MyGame> {
  List<TileModel> tiles;
  Size? mapSize;
  Vector2? mapStartPosition;
  double tileSizeToUpdate;
  List<Tile> childrenTile = [];
  bool loaded = false;

  MapComponent(this.tiles, {this.tileSizeToUpdate = 0});

  Iterable<Tile> getRendered();

  Iterable<ObjectCollision> getCollisionsRendered();
  Iterable<ObjectCollision> getCollisions();

  Future<void> updateTiles(List<TileModel> map);

  Size getMapSize();

  void removeTile(String id);
  Future addTile(TileModel tileModel);

  void setLinePath(List<Offset> linePath, Color color, double strokeWidth) {}

  @override
  int get priority => LayerPriority.MAP;

  void renderDebugMode(Canvas canvas) {
    for (final t in getRendered()) {
      t.renderDebugMode(canvas);
    }
  }

  @override
  Future<void>? onLoad() {
    loaded = true;
    return super.onLoad();
  }
}

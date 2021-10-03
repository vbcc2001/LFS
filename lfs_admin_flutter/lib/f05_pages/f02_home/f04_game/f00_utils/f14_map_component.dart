import 'dart:ui';

import 'package:bonfire/base/bonfire_game.dart';
import 'package:bonfire/collision/object_collision.dart';
import 'package:bonfire/map/tile/tile.dart';
import 'package:bonfire/map/tile/tile_model.dart';
import 'package:bonfire/util/bonfire_game_ref.dart';
import 'package:bonfire/util/priority_layer.dart';
import 'package:flame/components.dart';

import '../game.dart';
import 'f05_game_ref.dart';

abstract class MapComponent extends Component with MyHasGameRef<MyGame> {
  List<TileModel> tiles;
  Size? mapSize;
  Vector2? mapStartPosition;
  double tileSizeToUpdate;
  List<Tile> children = [];
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

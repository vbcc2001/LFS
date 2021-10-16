import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/collision/object_collision.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/tile/tile.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/tile/tile_model.dart';

import '../../game.dart';
import '../f01_layer_priority.dart';
import '../f15_quadtree.dart';
import 'f13_tile_component.dart';

class MapComponent extends PositionComponent with HasGameRef<MyGame> {

  List<SpriteTile> tiles = [];
  List<SpriteTile> tilesCollisions = List.empty();
  QuadTree<SpriteTile> quadTree = QuadTree(0,0,0,0);

  Size mapSize = Size(0,0);
  /// ******************** Tile 尺寸************************/
  final double tileSize = 32.0;
  double tileSizeToUpdate = 0;
  bool loaded = false;

  static const COUNT_LOT = 2;
  int countBuildTileLot = 100;
  Vector2 lastCamera = Vector2.zero();
  double lastMinorZoom = 1.0;
  Vector2? lastSizeScreen;

  List<ObjectCollision> _tilesVisibleCollisions = List.empty();
  List<TileModel> _tilesToAdd = [];
  List<Tile> _tilesToRemove = [];
  Set<String> _visibleSet = Set();
  bool _buildingTiles = false;

  int get priority => LayerPriority.MAP;
  /// *************************************************** ----- *************************************************/
  /// *************************************************** 实例化 *************************************************/
  /// *************************************************** ----- *************************************************/
  MapComponent(this.tiles):super( priority:LayerPriority.MAP);

  @override
  Future<void> onLoad() async {
    super.onLoad();
    /********************** ImageCache 集合************************/
    // await Future.forEach<TileModel>(tiles, _loadTile);
    /********************** Map 尺寸************************/
    double height = gameRef.size.x;
    double width =  gameRef.size.y;
    this.mapSize = Size(width, height);
    /********************** Map 位置************************/
    double x = this.tiles.first.position.x;
    double y = this.tiles.first.position.y;
    this.tiles.forEach((tile) {
      x = min(tile.position.x ,x);
      y = min(tile.position.y ,y);
    });
    this.position = Vector2(x, y);
    /********************** 屏幕尺寸 ************************/
    lastSizeScreen = gameRef.size.clone();
    /********************** 冲突Tile 集合************************/
    // List<Tile> aux = [];
    // final list = tiles.where((element) => element.collisions?.isNotEmpty == true );
    // list.forEach((element) => aux.add( element.getTile() ) );
    // this.tilesCollisions = aux;
    /********************** 四叉树(QuadTree) 集合************************/
    int minSize = min(gameRef.size.x, gameRef.size.y).ceil();
    int maxItems = (minSize / 2 / tileSize).ceil() * (minSize / 2 / tileSize).ceil() ;
    this.quadTree = QuadTree( 0, 0, (mapSize.width.ceil() / tileSize).ceil(), (mapSize.height.ceil() / tileSize).ceil(), maxItems: maxItems,);
    tiles.forEach((element) => quadTree.insert(element, Point(element.x, element.y), element.id));
    /// TODO  对动画的处理
    //   if (element.animation != null) {
    //     for (var frame in (element.animation?.frames ?? [])) {
    //       await MapAssetsManager.loadImage(frame.path);
    //     }
    //   }
    // _searchTilesToRender();
    // tiles.forEach((element) => add(element));
    tiles.forEach((element) => element.onLoad());
  }

  @override
  void render(Canvas c) {
    super.render(c);

    tiles.forEach((element) {
      // final p = getBlockPositionInts(j, i);
      print(element);
      print(element.position);
      print(element.size);
      print(element.sprite);
      element.sprite?.render(c,position:element.position,size:element.size);
    });
    // IsometricTileMapComponent  a = IsometricTileMapComponent()
    // final size = effectiveTileSize;
    // for (var i = 0; i < matrix.length; i++) {
    //   for (var j = 0; j < matrix[i].length; j++) {
    //     final element = matrix[i][j];
    //     if (element != -1) {
    //       final sprite = tileset.getSpriteById(element);
    //       final p = getBlockPositionInts(j, i);
    //       sprite.render(c, position: p, size: size);
    //     }
    //   }
    // }
  }

  // @override
  // void update(double t) {
  //   super.update(t);
  //   if (!_buildingTiles && _checkNeedUpdateTiles()) {
  //     _buildingTiles = true;
  //     scheduleMicrotask(_searchTilesToRender);
  //   }
  //
  //   for (Tile tile in tiles) {
  //     tile.update(t);
  //     if (tile.shouldRemove) {
  //       _tilesToRemove.add(tile);
  //     }
  //   }
  //
  //   _verifyRemoveTileOfWord();
  // }

  // void _searchTilesToRender() {
  //
  //   final double spacing = 32.0;
  //   final zoom = gameRef.camera.zoom >1? 1 : 1/gameRef.camera.zoom ;
  //   /// 矩形尺寸 ==> 以Camera为中心，调整Camera Zoom ，四周预留spacing
  //   final rectCamera = Rect.fromLTWH(
  //     gameRef.camera.position.x,
  //     gameRef.camera.position.y,
  //     (gameRef.size.x) * zoom  +  (spacing * 2),
  //     (gameRef.size.y) * zoom +  (spacing * 2),
  //   );
  //
  //   final Rectangle rectangle = Rectangle(
  //     rectCamera.left / tileSize,
  //     rectCamera.top / tileSize,
  //     rectCamera.width / tileSize,
  //     rectCamera.height / tileSize,
  //   );
  //
  //   final visibleTileModel = quadTree.query(rectangle);
  //
  //   _tilesToAdd = visibleTileModel.where((element) => !_visibleSet.contains(element.id) ).toList();
  //   _visibleSet = visibleTileModel.map((e) => e.id).toSet();
  //   tileList.removeWhere((element) => !_visibleSet.contains(element.id));
  //   tileList.addAll(_tilesToAdd.map((e) => e.getTile()).toList());
  //   // tileList.addAll(tiles.map((e) => e.getTile()).toList());
  //   _tilesVisibleCollisions = tileList.whereType<ObjectCollision>().toList();
  //   _buildingTiles = false;
  // }


  void _verifyRemoveTileOfWord() {
    if (_tilesToRemove.isNotEmpty) {
      for (Tile tile in _tilesToRemove) {
        if (tile.shouldRemove) {
          children.remove(tile);
          tiles.removeWhere((element) => element.id == tile.id);
          quadTree.removeById(tile.id);
          if (tile is ObjectCollision) {
            tilesCollisions.removeWhere((element) {
              return (element as Tile).id == tile.id;
            });
            _tilesVisibleCollisions.removeWhere((element) {
              return (element as Tile).id == tile.id;
            });
          }
        }
      }
    }
  }

  bool _checkNeedUpdateTiles() {
    final camera = _getCameraTileUpdate();
    if (lastCamera != camera || lastMinorZoom > gameRef.camera.zoom) {
      lastCamera = camera;
      if (lastMinorZoom > gameRef.camera.zoom) {
        lastMinorZoom = gameRef.camera.zoom;
      }
      return true;
    }
    return false;
  }

  Vector2 _getCameraTileUpdate() {
    return Vector2(
      (gameRef.camera.position.x / tileSizeToUpdate).floorToDouble(),
      (gameRef.camera.position.y / tileSizeToUpdate).floorToDouble(),
    );
  }
}

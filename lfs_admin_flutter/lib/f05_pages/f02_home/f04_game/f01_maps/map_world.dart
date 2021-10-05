import 'dart:async';
import 'dart:math';
import 'dart:ui';


import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f14_map_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f15_quadtree.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/tile/tile.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/tile/tile_model.dart';

import '../game.dart';
import 'collision/object_collision.dart';
import 'map_assets_manager.dart';

class MapComponent extends Component with HasGameRef<MyGame> {


  List<TileModel> tiles;
  List<Tile> tileList = [];
  List<ObjectCollision> tilesCollisions = List.empty();
  QuadTree<TileModel> quadTree = QuadTree(0,0,0,0);

  Size  mapSize = Size(0,0);
  double tileSize = 0.0;
  Vector2 mapStartPosition = Vector2.zero();
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


  // List<Offset> _linePath = [];
  Paint _paintPath = Paint()
    ..color = Colors.lightBlueAccent.withOpacity(0.8)
    ..strokeWidth = 4
    ..strokeCap = StrokeCap.round;


  /// *************************************************** ----- *************************************************/
  /// *************************************************** 实例化 *************************************************/
  /// *************************************************** ----- *************************************************/
  MapComponent(this.tiles);

  @override
  Future<void> onLoad() async {
    super.onLoad();
    /********************** Tile 尺寸************************/
    this.tileSize = tiles.first.width;
    /********************** Map 尺寸************************/
    double height = 0;
    double width = 0;
    this.tiles.forEach((tile) {
      width = max(tile.right ,width);
      height = max(tile.bottom ,height);
    });
    this.mapSize = Size(width, height);

    /********************** Map 位置************************/
    double x = this.tiles.first.left;
    double y = this.tiles.first.top;
    this.tiles.forEach((tile) {
      x = min(tile.left ,x);
      y = min(tile.top ,y);
      print(tile.id);
    });
    this.mapStartPosition = Vector2(x, y);
    /********************** 冲突Tile 集合************************/
    List<ObjectCollision> aux = [];
    final list = tiles.where((element) => element.collisions?.isNotEmpty == true );
    list.forEach((element) => aux.add(element.getTile() as ObjectCollision) );
    this.tilesCollisions = aux;
    /********************** 四叉树(QuadTree) 集合************************/
    int minSize = min(gameRef.size.x, gameRef.size.y).ceil();
    int maxItems = (minSize / 2 / tileSize).ceil() * (minSize / 2 / tileSize).ceil() ;
    this.quadTree = QuadTree( 0, 0, (mapSize.width.ceil() / tileSize).ceil(), (mapSize.height.ceil() / tileSize).ceil(), maxItems: maxItems,);
    tiles.forEach((element) => quadTree.insert(element, Point(element.x, element.y), id: element.id));
    print("------------------------------------------------------------------------");
    print(tiles);
    print(mapSize);
    print(maxItems);
    print(minSize);
    print(quadTree.left);
    print(quadTree.top);
    print(quadTree.width);
    print(quadTree.height);
    print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
    /********************** ImageCache 集合************************/
    await Future.forEach<TileModel>(tiles, _loadTile);
    // tiles.forEach( (element) => MapAssetsManager.loadImage((element.sprite?.path ?? '')) );
    /// TODO  对动画的处理
    //   if (element.animation != null) {
    //     for (var frame in (element.animation?.frames ?? [])) {
    //       await MapAssetsManager.loadImage(frame.path);
    //     }
    //   }
    /********************** ImageCache 集合************************/
    lastSizeScreen = gameRef.size.clone();

    // if (tileSizeToUpdate == 0) {
    //   tileSizeToUpdate = (tileSize * 4).ceilToDouble();
    // }
    tiles.forEach((element) {
      // print("------------------------------------------------------------------------");
      // print(tileSize);
      // print(mapSize);
      // print(mapStartPosition);
      // print(tilesCollisions);
      // print("$element.x,$element.y,");
      // print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
    } );

    _searchTilesToRender();
  }

  void _searchTilesToRender() {

    final double spacing = 32.0;
    final zoom = gameRef.camera.zoom >1? 1 : 1/gameRef.camera.zoom ;
    /// 矩形尺寸 ==> 以Camera为中心，调整Camera Zoom ，四周预留spacing
    final rectCamera = Rect.fromCenter(
      center: gameRef.camera.position.toOffset(),
      width: (gameRef.size.x) *  zoom  +  (spacing * 2),
      height: (gameRef.size.y) * zoom +  (spacing * 2),
    );


    final Rectangle rectangle = Rectangle(
      rectCamera.left / tileSize,
      rectCamera.top / tileSize,
      rectCamera.width / tileSize,
      rectCamera.height / tileSize,
    );
    // print("------------------------------------------------------------------------");
    // print(rectCamera);
    // print(rectangle);
    // print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
    final visibleTileModel = quadTree.query(rectangle);

    _tilesToAdd = visibleTileModel.where((element) => !_visibleSet.contains(element.id) ).toList();
    _visibleSet = visibleTileModel.map((e) => e.id).toSet();
    // print("------------------------------------------------------------------------");
    // print(rectCamera);
    // print(rectangle);
    // print(_tilesToAdd);
    // print(_visibleSet);
    // print(tileList);
    // print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
    // tileList.removeWhere((element) => !_visibleSet.contains(element.id));
    // tileList.addAll(_tilesToAdd.map((e) => e.getTile()).toList());
    tileList.addAll(visibleTileModel.toList().map((e) => e.getTile()).toList());
    _tilesVisibleCollisions = tileList.whereType<ObjectCollision>().toList();
    _buildingTiles = false;


    // tileList.forEach((element) {
    //   print("---------------------");
    //   print(element.id);
    //   print("++++++++++++++++++++");
    // });

  }


  Future<void> _loadTile(TileModel element) async {
    if (element.sprite != null) {
      await MapAssetsManager.loadImage((element.sprite?.path ?? ''));
    }
    if (element.animation != null) {
      for (var frame in (element.animation?.frames ?? [])) {
        await MapAssetsManager.loadImage(frame.path);
      }
    }
    return Future.value();
  }


  @override
  void render(Canvas canvas) {
    tileList.forEach((element) => element.render(canvas));

    // if (_linePath.isNotEmpty) {
    //   _paintPath.style = PaintingStyle.stroke;
    //   final path = Path()..moveTo(_linePath.first.dx, _linePath.first.dy);
    //   for (var i = 1; i < _linePath.length; i++) {
    //     path.lineTo(_linePath[i].dx, _linePath[i].dy);
    //   }
    //   canvas.drawPath(path, _paintPath);
    // }
  }

  @override
  void update(double t) {
    super.update(t);
    if (!_buildingTiles && _checkNeedUpdateTiles()) {
      _buildingTiles = true;
      scheduleMicrotask(_searchTilesToRender);
    }

    for (Tile tile in tileList) {
      tile.update(t);
      if (tile.shouldRemove) {
        _tilesToRemove.add(tile);
      }
    }

    _verifyRemoveTileOfWord();
  }

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

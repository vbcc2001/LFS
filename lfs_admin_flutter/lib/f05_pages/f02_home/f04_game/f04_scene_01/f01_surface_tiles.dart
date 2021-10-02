


import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:flame_tiled/tiled_component.dart';
import 'package:flutter/services.dart';

import 'game.dart';

class SurfaceTiles extends  PositionComponent  with HasGameRef<Scene01>  {

  late SpriteSheet tileset;
  late List<List<int>> matrix;
  late double srcTileSize;
  late double destTileSize;

  Map<String?, SpriteBatch> batches = <String, SpriteBatch>{};

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    srcTileSize = 32.0;
    destTileSize = 2*srcTileSize;
    // this.size= gameRef.size/2;

    final tilesetImage = await Flame.images.load('tiles/terrain.png');
    tileset = SpriteSheet(
      image: tilesetImage,
      srcSize: Vector2.all(srcTileSize),
    );
    matrix = await readCsvTile('images/tiles/scene01.csv');
    final TiledComponent tiledMap = TiledComponent('map.tmx', Size(16.0, 16.0));
    await add(tiledMap);
    // var  spriteBatch = SpriteBatch(tilesetImage);
    // spriteBatch.add(source: source)
    print('size = $this.size');



    // final size = Vector2.all(destTileSize);
    // for (var i = 0; i < matrix.length; i++) {
    //   for (var j = 0; j < matrix[i].length; j++) {
    //     final element = matrix[i][j];
    //     if (element != -1) {
    //       final sprite = tileset.getSpriteById(element-1);
    //       final p = Vector2(j.toDouble(), i.toDouble())..multiply(Vector2.all(destTileSize));
    //       add(SpriteComponent(position: p, size: size,sprite:sprite));
    //       // sprite.render(this.canvas, position: p, size: size);
    //     }
    //   }
    // }
    // print("-----------------e");
  }
  // @override
  // void preRender(Canvas canvas) {
  //   final size = Vector2.all(destTileSize);
  //   for (var i = 0; i < matrix.length; i++) {
  //     for (var j = 0; j < matrix[i].length; j++) {
  //       final element = matrix[i][j];
  //       if (element != -1) {
  //         final sprite = tileset.getSpriteById(element-1);
  //         final p = Vector2(j.toDouble(), i.toDouble())..multiply(Vector2.all(destTileSize));
  //         sprite.render(canvas, position: p, size: size);
  //       }
  //     }
  //   }
  //   print("-----------------e");
  // }
  @override
  void render(Canvas c) {
    super.render(c);

  }
  //获取Csv格式Tile
  Future<List<List<int>>> readCsvTile(String fileName) async {
    var prefix = 'assets/';
    final string = await rootBundle.loadString('$prefix$fileName');

    List<List<int>> list = [];
    List<String> row  = string.split('\n');
    row.forEach((element) {
      element = element.trim();
      element = element.lastIndexOf(',') == element.length-1 ? element.substring(0,element.length-1):element;
      List <String> index = element.split(',');
      List <int> rowInt = index.map(int.parse).toList();
      list.add(rowInt);
    });
    return list;
  }

}
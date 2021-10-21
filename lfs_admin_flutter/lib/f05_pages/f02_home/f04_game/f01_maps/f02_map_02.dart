import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/services.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_layer_priority.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/game.dart';

class Map02 extends PositionComponent  with HasGameRef<MyGame>  {

  late SpriteSheet tileset;
  late List<List<int>> matrix;
  static const double srcTileSize = 32;
  static const double destTileSize = 64;
  final tileSize = Vector2.all(destTileSize);
  int get priority => LayerPriority.MAP;

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    final tilesetImage = await Flame.images.load('ProjectUtumno_full.png');
    tileset = SpriteSheet(
      image: tilesetImage,
      srcSize: Vector2.all(srcTileSize),
    );
    matrix = await readCsvTile('images/tiles/map02.csv');
  }

  @override
  void preRender(Canvas canvas) {
    //计算显示范围
    final int starX = (gameRef.camera.position.x / 64).ceil() ;
    final int starY = (gameRef.camera.position.y / 64).ceil() ;
    final int endX = starX + gameRef.gridX ;
    final int endY =  starY +gameRef.gridY ;
    //四周增加显示内容
    final offsetStarX = starX-4>0?starX-4:0;
    final offsetStarY = starY-4>0?starY-4:0;
    final offsetEndX = endX + 4;
    final offsetEndY = endY + 4;
    for (var i = offsetStarX; i < offsetEndX ; i++) {
      for (var j = offsetStarY; j < offsetEndY; j++) {
        final element = matrix[j][i];
        if (element != -1) {
          final sprite = tileset.getSpriteById(element);
          final p = Vector2(i.toDouble(), j.toDouble())..multiply(Vector2.all(destTileSize));
          sprite.render(canvas, position: p, size: tileSize);
        }
      }
    }
  }
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
      if(element.isNotEmpty && element.trim().isNotEmpty) {
        element = element.trim();
        element = element.lastIndexOf(',') == element.length-1 ? element.substring(0,element.length-1):element;
        List <String> index = element.split(',');
        List <int> rowInt = index.map(int.parse).toList();
        list.add(rowInt);
      }
    });
    return list;
  }
}
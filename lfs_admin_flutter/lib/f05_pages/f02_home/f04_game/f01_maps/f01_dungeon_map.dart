import 'dart:html';
import 'dart:math';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f02_component/f13_tile_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f02_component/f14_map_component.dart';
import '../f00_utils/f02_component/f16_sprite_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/tile/tile_model.dart';
import '../f00_utils/f02_component/f06_enemy.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f07_enemy_goblin.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f08_torch.dart';

import 'collision/collision_area.dart';
import '../f02_components/map_decoration.dart';
import 'map_world.dart';

class DungeonMap {
  static double tileSize = 45;
  static final String wallBottom = 'tile/wall_bottom.png';
  static final String wall = 'tile/wall.png';
  static final String wallTop = 'tile/wall_top.png';
  static final String wallLeft = 'tile/wall_left.png';
  static final String wallBottomLeft = 'tile/wall_bottom_left.png';
  static final String wallRight = 'tile/wall_right.png';
  static final String floor_1 = 'tile/floor_1.png';
  static final String floor_2 = 'tile/floor_2.png';
  static final String floor_3 = 'tile/floor_3.png';
  static final String floor_4 = 'tile/floor_4.png';

  static MapWord map() {
    List<TileModel> tileList = [];
    List.generate(35, (indexRow) {
      List.generate(70, (indexColumm) {
        if (indexRow == 3 && indexColumm > 2 && indexColumm < 30) {
          tileList.add(TileModel(
            sprite: TileModelSprite(path: wallBottom),
            x: indexColumm.toDouble(),
            y: indexRow.toDouble(),
            collisions: [ CollisionArea.rectangle(size: Size(tileSize, tileSize)) ],
            width: tileSize,
            height: tileSize,
          ));
          return;
        }
        if (indexRow == 4 && indexColumm > 2 && indexColumm < 30) {
          tileList.add(TileModel(
            sprite: TileModelSprite(path: wall),
            x: indexColumm.toDouble(),
            y: indexRow.toDouble(),
            // collisions: [ CollisionArea.rectangle(size: Size(tileSize, tileSize)) ],
            width: tileSize,
            height: tileSize,
          ));
          return;
        }

        if (indexRow == 9 && indexColumm > 2 && indexColumm < 30) {
          tileList.add(TileModel(
            sprite: TileModelSprite(path: wallTop),
            x: indexColumm.toDouble(),
            y: indexRow.toDouble(),
            // collisions: [ CollisionArea.rectangle(size: Size(tileSize, tileSize)) ],
            width: tileSize,
            height: tileSize,
          ));
          return;
        }

        if (indexRow > 4 &&
            indexRow < 9 &&
            indexColumm > 2 &&
            indexColumm < 30) {
          tileList.add(
            TileModel(
              sprite: TileModelSprite(path: randomFloor()),
              x: indexColumm.toDouble(),
              y: indexRow.toDouble(),
              width: tileSize,
              height: tileSize,
            ),
          );
          return;
        }

        if (indexRow > 3 && indexRow < 9 && indexColumm == 2) {
          tileList.add(TileModel(
            sprite: TileModelSprite(path: wallLeft),
            x: indexColumm.toDouble(),
            y: indexRow.toDouble(),
            // collisions: [ CollisionArea.rectangle(size: Size(tileSize, tileSize)) ],
            width: tileSize,
            height: tileSize,
          ));
        }
        if (indexRow == 9 && indexColumm == 2) {
          tileList.add(TileModel(
            sprite: TileModelSprite(path: wallBottomLeft),
            x: indexColumm.toDouble(),
            y: indexRow.toDouble(),
            // collisions: [ CollisionArea.rectangle(size: Size(tileSize, tileSize)) ],
            width: tileSize,
            height: tileSize,
          ));
        }

        if (indexRow > 3 && indexRow < 9 && indexColumm == 30) {
          tileList.add(TileModel(
            sprite: TileModelSprite(path: wallRight),
            x: indexColumm.toDouble(),
            y: indexRow.toDouble(),
            // collisions: [ CollisionArea.rectangle(size: Size(tileSize, tileSize)) ],
            width: tileSize,
            height: tileSize,
          ));
        }
      });
    });

    return MapWord(tileList);
  }
  static MapComponent map2() {
    List<SpriteTile> tiles = [];
    List.generate(35, (indexRow) {
      List.generate(70, (indexColumm) {
        if (indexRow == 3 && indexColumm > 2 && indexColumm < 30) {
          tiles.add(SpriteTile(
            spritePath: wallBottom,
            position: Vector2(indexColumm.toDouble()*32,indexRow.toDouble()*32),
          ));
          return;
        }
        if (indexRow == 4 && indexColumm > 2 && indexColumm < 30) {
          tiles.add(SpriteTile(
            spritePath: wall,
            position: Vector2(indexColumm.toDouble()*32,indexRow.toDouble()*32),
          ));
          return;
        }

        if (indexRow == 9 && indexColumm > 2 && indexColumm < 30) {
          tiles.add(SpriteTile(
            spritePath: wallTop,
            position: Vector2(indexColumm.toDouble()*32,indexRow.toDouble()*32),
          ));
          return;
        }

        if (indexRow > 4 && indexRow < 9 && indexColumm > 2 && indexColumm < 30) {
          tiles.add(SpriteTile(
            spritePath: randomFloor(),
            position: Vector2(indexColumm.toDouble()*32,indexRow.toDouble()*32),
          ));
          return;
        }

        if (indexRow > 3 && indexRow < 9 && indexColumm == 2) {
          tiles.add(SpriteTile(
            spritePath: wallLeft,
            position: Vector2(indexColumm.toDouble()*32,indexRow.toDouble()*32),
          ));
        }
        if (indexRow == 9 && indexColumm == 2) {
          tiles.add(SpriteTile(
            spritePath: wallBottomLeft,
            position: Vector2(indexColumm.toDouble()*32,indexRow.toDouble()*32),
          ));
        }

        if (indexRow > 3 && indexRow < 9 && indexColumm == 30) {
          tiles.add(SpriteTile(
            spritePath: wallRight,
            position: Vector2(indexColumm.toDouble()*32,indexRow.toDouble()*32),
          ));
        }
      });
    });

    return MapComponent(tiles);
  }

  static MapDecoration decorations() {

    List<Component> decorations = [
      // Spikes(
      //   getRelativeTilePosition(7, 7),
      // ),
      // BarrelDraggable(getRelativeTilePosition(8, 6)),
      // GameDecorationWithCollision.withSprite(
      //   Sprite.load('itens/barrel.png'),
      //   getRelativeTilePosition(10, 6),
      //   width: tileSize,
      //   height: tileSize,
      //   collisions: [
      //     CollisionArea.rectangle(size: Size(tileSize / 1.5, tileSize / 1.5))
      //   ],
      // ),
      // Chest(getRelativeTilePosition(18, 7)),
      // GameDecorationWithCollision.withSprite(
      //   Sprite.load('itens/table.png'),
      //   getRelativeTilePosition(15, 7),
      //   width: tileSize,
      //   height: tileSize,
      //   collisions: [
      //     CollisionArea.rectangle(size: Size(tileSize, tileSize * 0.8)),
      //   ],
      // ),
      // GameDecorationWithCollision.withSprite(
      //   Sprite.load('itens/table.png'),
      //   getRelativeTilePosition(27, 6),
      //   width: tileSize,
      //   height: tileSize,
      //   collisions: [
      //     CollisionArea.rectangle(size: Size(tileSize, tileSize * 0.8)),
      //   ],
      // ),
      // Torch(getRelativeTilePosition(4, 4)),
      // Torch(getRelativeTilePosition(12, 4)),
      // Torch(getRelativeTilePosition(20, 4)),
      // Torch(getRelativeTilePosition(28, 4)),
      MySpriteComponent(
          imgPath:'itens/flag_red.png',
          position: getRelativeTilePosition(24, 4),
          size: Vector2.all(tileSize)
      ),
      MySpriteComponent(
          imgPath:'itens/flag_red.png',
          position: getRelativeTilePosition(6, 4),
          size: Vector2.all(tileSize)
      ),
      MySpriteComponent(
          imgPath:'itens/prisoner.png',
          position: getRelativeTilePosition(10, 4),
          size: Vector2.all(tileSize)
      ),
      MySpriteComponent(
        imgPath:'itens/flag_red.png',
        position: getRelativeTilePosition(14, 4),
        size: Vector2.all(tileSize)
      ),
      Torch(position:getRelativeTilePosition(4, 4)),
      Torch(position:getRelativeTilePosition(12, 4)),
      Torch(position:getRelativeTilePosition(20, 4)),
      Torch(position:getRelativeTilePosition(28, 4)),

    ];
    return MapDecoration(decorations:decorations);
  }

  static List<EnemyComponent> enemies() {
    return [
      // // Goblin(imgPath: 'minotaur.png', position: getRelativeTilePosition(14, 6)),
      // Goblin(imgPath: 'minotaur.png', position: Vector2.all(100)),
      // // Goblin(imgPath: 'minotaur.png', position: getRelativeTilePosition(25, 6)),
    ];
  }

  static String randomFloor() {
    int p = Random().nextInt(6);
    switch (p) {
      case 0:
        return floor_1;
      case 1:
        return floor_2;
      case 2:
        return floor_3;
      case 3:
        return floor_4;
      case 4:
        return floor_3;
      case 5:
        return floor_4;
      default:
        return floor_1;
    }
  }

  static Vector2 getRelativeTilePosition(int x, int y) {
    return Vector2(
      (x * tileSize).toDouble(),
      (y * tileSize).toDouble(),
    );
  }
}

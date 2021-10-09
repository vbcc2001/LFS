import 'dart:async';
import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f03_game.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f14_map_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_layer/f02_lighting.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_layer/f04_color_filter.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/f01_dungeon_map.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f07_enemy_goblin.dart';
import 'f00_utils/f06_player.dart';
import 'f01_layer/f03_interface.dart';
import 'f01_layer/f01_background.dart';

import 'f02_components/map_decoration.dart';


class MyGame extends CustomBaseGame with HasCollidables,KeyboardEvents {

  /// Context used to access all Flutter power in your game.
  /// 游戏上下文 Context
  final BuildContext context;
  /// Game Player
  /// 游戏玩家角色
  late final Player player;
  /// Represents a map (or world) where the game occurs.
  /// 游戏地图
  late final MapComponent map;
  static const List<String> _imageAssets = [
    'minotaur.png',
  ];
  MyGame({ required this.context,});

  @override
  Future<void> onLoad() async {
    print("----------------------");
    print(this.size);
    print("+++++++++++++++++++++");
    super.onLoad();
    /****************************************** 初始化图片资源 **************************************/
    await images.loadAll(_imageAssets);
    /****************************************** Camera 设置 **************************************/
    camera.viewport = FixedResolutionViewport(Vector2(size.y, size.y));
    /****************************************** background **************************************/
    var background = BackgroundLayer(Colors.blueGrey[900]!);
    add(background);
    /****************************************** 灯光层 **************************************/
    var lighting = LightingLayer(color: Colors.black.withOpacity(0.25));
    add(lighting);
    /****************************************** ColorFilter **************************************/
    var _colorFilterLayer = ColorFilterLayer(Colors.blue,BlendMode.colorBurn);
    // add(_colorFilterLayer);
    /****************************************** 界面层 **************************************/
    var interface = InterfaceLayer();
    add(interface);
    /****************************************** map **************************************/
    map = DungeonMap.map();
    add(map);
    /****************************************** map 装饰物 **************************************/
    MapDecoration mapDecoration = DungeonMap.decorations();
    add(mapDecoration);
    /****************************************** enemies **************************************/
    Image image = await Flame.images.load('minotaur.png');
    List<Goblin>  enemies = [
      Goblin(image: image, position: DungeonMap.getRelativeTilePosition(14, 6)),
      Goblin(image: image, position: DungeonMap.getRelativeTilePosition(5, 6)),
    ];
    enemies.forEach((enemy) => add(enemy) );
    /****************************************** player **************************************/
    player = Player(image: image ,data:Goblin.animationMap);
    add(player);
  }


  @override
  void onPointerDown(PointerDownEvent event) {
    onTapDown?.call(
      this,
      event.localPosition,
      camera.screenPositionToWorld(event.localPosition),
    );
    super.onPointerDown(event);
  }

  @override
  void onPointerUp(PointerUpEvent event) {
    onTapUp?.call(
      this,
      event.localPosition,
      camera.screenPositionToWorld(event.localPosition),
    );
    super.onPointerUp(event);
  }
}

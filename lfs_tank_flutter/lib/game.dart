import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Image;
import 'f01_utils/f03_game.dart';
import 'f02_layers/f01_background.dart';
import 'f02_layers/f02_map_gird.dart';
import 'f02_layers/f03_interface.dart';
import 'f02_layers/f04_color_filter.dart';
import 'f02_layers/f05_lighting.dart';
import 'f02_layers/f06_map_background.dart';
import 'f03_components/f01_joystick_component.dart';
import 'f03_components/f06_player_goblin.dart';
import 'f03_components/f15_selector_component.dart';

class MyGame extends CustomBaseGame  with HasCollidables,HasKeyboardHandlerComponents,HasTappableComponents,HasHoverableComponents,MouseMovementDetector,HasDraggableComponents {
  /// 游戏上下文 Context
  final BuildContext context;
  /// 界面层
  final interface = InterfaceLayer();
  /// Game Player
  /// 游戏玩家角色
  late final PlayerGoblin player;
  /// 操作杆
  Joystick joystick = Joystick() ;
  /// 需要显示的灯光元素
  LightingLayer lightingLayer = LightingLayer();
  ///选择器
  SelectorComponent selectorComponent = SelectorComponent();
  ///图片资源
  static const List<String> _imageAssets = [
    'f04_player.png',
  ];
  int gridX = 0;
  int gridY = 0;

  MyGame(this.context);

  @override
  Future<void> onLoad() async {
    super.onLoad();
    gridX = (size.x / 64).ceil() ;
    gridY = (size.y / 64).ceil() ;
    if (kDebugMode) {
      print("----------------------");
      print(size);
      print(gridX);
      print(gridY);
      print("+++++++++++++++++++++");
    }
    /****************************************** 初始化图片资源 **************************************/
    await images.loadAll(_imageAssets);
    /****************************************** Camera 设置 **************************************/
    camera.viewport = FixedResolutionViewport(size);
    // camera.zoom =2;
    /****************************************** background **************************************/
    var background = BackgroundLayer();
    add(background);
    /****************************************** Map Background **************************************/
    var mapBackgroundLayer = MapBackgroundLayer();
    add(mapBackgroundLayer);
    /****************************************** 地图网格 **************************************/
    var mapGird = MapGirdLayer();
    add(mapGird);
    /****************************************** 灯光层 **************************************/
    // add(lightingLayer);
    /****************************************** ColorFilter **************************************/
    var _colorFilterLayer = ColorFilterLayer(Colors.blue,BlendMode.colorBurn);
    // add(_colorFilterLayer);
    /****************************************** 界面层 **************************************/
    add(interface);
    /****************************************** 鼠标选择层 **************************************/
    add(selectorComponent);
    /****************************************** 操作杆 **************************************/
    add(joystick);
    /**************** ************************** map **************************************/
    // map = DungeonMap.map();
    // add(map);
    // var map2 =  DungeonMap.map2();
    // add(map2);
    // var map02 = Map02();
    // add(map02);
    /****************************************** map 装饰物 **************************************/
    // MapDecoration mapDecoration = DungeonMap.decorations();
    // add(mapDecoration);
    /****************************************** enemies **************************************/
    // Image image = await Flame.images.load('minotaur.png');
    // List<Goblin>  enemies = [
    //   Goblin(image: image, position: DungeonMap.getRelativeTilePosition(14, 6)),
    //   Goblin(image: image, position: DungeonMap.getRelativeTilePosition(20, 6)),
    // ];
    // enemies.forEach((enemy) => add(enemy) );


    /****************************************** player **************************************/
    Image imagePlay =  await images.load('f04_player.png');
    player = PlayerGoblin( joystick:joystick, image: imagePlay , position:size/2);
    add(player);
    camera.followComponent(player);

  }

}

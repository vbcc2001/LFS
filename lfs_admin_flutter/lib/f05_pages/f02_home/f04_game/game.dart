import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/geometry.dart';
import 'package:flame/input.dart';
import 'package:flame/palette.dart';
import 'package:flame/particles.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter/services.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f02_component/f03_rive_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f03_game.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_layer/f02_map_gird.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/f02_map_02.dart';
import 'package:rive/rive.dart';
import 'f00_utils/f01_layer_priority.dart';
import 'f00_utils/f01_mixin/f11_lighting.dart';
import 'f00_utils/f02_component/f01_joystick.dart';
import 'f00_utils/f02_component/f14_map_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_layer/f05_lighting.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_layer/f04_color_filter.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/f01_dungeon_map.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f07_enemy_goblin.dart';
import 'f00_utils/f02_component/f06_player.dart';
import 'f00_utils/f02_rive_canvas.dart';
import 'f01_layer/f03_interface.dart';
import 'f01_layer/f01_background.dart';

import 'f01_layer/f06_map_background.dart';
import 'f01_maps/map_world.dart';
import 'f02_components/f06_player_goblin.dart';
import 'f02_components/f15_selector_component.dart';
import 'f02_components/map_decoration.dart';


class MyGame extends CustomBaseGame with HasCollidables,HasKeyboardHandlerComponents,HasTappableComponents,HasHoverableComponents,MouseMovementDetector,HasDraggableComponents {
  /// Context used to access all Flutter power in your game.
  /// 游戏上下文 Context
  final BuildContext context;
  /// Game Player
  /// 游戏玩家角色
  late final PlayerGoblin player;
  /// Represents a map (or world) where the game occurs.
  /// 游戏地图
  late final MapWord map;
  /// 界面层
  final interface = InterfaceLayer();
  /// 操作杆
  Joystick joystick = Joystick() ;

  /// 需要显示的灯光元素
  LightingLayer lightingLayer = LightingLayer();

  static const List<String> _imageAssets = [
    'minotaur.png',
  ];
   ///选择器
  SelectorComponent selectorComponent = SelectorComponent();

  int gridX = 0;
  int gridY = 0;


  MyGame({ required this.context,});

  @override
  // Color backgroundColor() => const Color(0xFF38607C);

  @override
  Future<void> onLoad() async {
    super.onLoad();
    gridX = (this.size.x / 64).ceil() ;
    gridY = (this.size.y / 64).ceil() ;
    print("----------------------");
    print(this.size);
    print(this.gridX);
    print(this.gridY);
    print("+++++++++++++++++++++");
    /****************************************** 初始化图片资源 **************************************/
    await images.loadAll(_imageAssets);
    /****************************************** Camera 设置 **************************************/
    camera.viewport = FixedResolutionViewport(Vector2(size.x, size.y));
    // camera.zoom =2;
    /****************************************** background **************************************/
    var background = BackgroundLayer();
    add(background);
    /****************************************** Map Background **************************************/
    var mapBackgroundLayer = MapBackgroundLayer();
    add(mapBackgroundLayer);
    /****************************************** 地图网格 **************************************/
    var mapGird = MapGirdLayer();
    // add(mapGird);
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
    map = DungeonMap.map();
    // add(map);
    var map2 =  DungeonMap.map2();
    // add(map2);
    var map02 = Map02();
    // add(map02);
    /****************************************** map 装饰物 **************************************/
    MapDecoration mapDecoration = DungeonMap.decorations();
    // add(mapDecoration);
    /****************************************** enemies **************************************/
    Image image = await Flame.images.load('minotaur.png');
    List<Goblin>  enemies = [
      Goblin(image: image, position: DungeonMap.getRelativeTilePosition(14, 6)),
      Goblin(image: image, position: DungeonMap.getRelativeTilePosition(20, 6)),
    ];
    // enemies.forEach((enemy) => add(enemy) );







    RiveFile riveFile1 = await RiveFile.asset('images/grass4.riv');
    SimpleAnimation animationController =  SimpleAnimation('wind');
    RiveComponent a = RiveComponent(riveFile1, context, animationController: animationController,size:Vector2(200,300),position: Vector2(300,300));
    // add(a);
    RiveFile riveFile = await RiveFile.asset('images/grassland.riv');
    RiveComponent b = RiveComponent(riveFile, context, size:Vector2(300,300),position: Vector2(100,100));
    // add(b);
    RiveFile riveFile2 = await RiveFile.asset('images/n.riv');
    RiveComponent c = RiveComponent(riveFile2, context, size:Vector2(200,200),position: Vector2(100,600));
    // add(c);


    /****************************************** player **************************************/
    Image imagePlay = await Flame.images.load('f04_player.png');
    // player = PlayerGoblin( joystick:joystick, image: imagePlay , position: DungeonMap.getRelativeTilePosition(4, 6));
    player = PlayerGoblin( joystick:joystick, image: imagePlay , position:this.size/2);
    add(player);
    camera.followComponent(player);

    RiveFile riveFile3 = await RiveFile.asset('riv/tree.riv');
    RiveComponent d = RiveComponent(riveFile3, context,artboardName:"02", size:Vector2(200,200),position: Vector2(100,400));
    add(d);
    SimpleAnimation animationController1 =  SimpleAnimation('wind');
    RiveComponent e = RiveComponent(riveFile3, context,artboardName:"01", animationController: animationController1,size:Vector2(200,200),position: Vector2(600,400));
    add(e);

  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    // _riveCanvas.draw(canvas, Size(400,400));
  }

  @override
  void update(double dt) {
    super.update(dt);
    // artboard.advance(dt);
  }

  @override
  void onMouseMove(PointerHoverInfo info) {
    super.onMouseMove(info);
    final screenPosition = info.eventPosition.game;
    selectorComponent.show = true;
    double offsetX = screenPosition.x % 32;
    double offsetY = screenPosition.y % 32;
    //偏移x,y
    Vector2 v = Vector2(-offsetX,-offsetY)..add(screenPosition);
    selectorComponent.position.setFrom(v);
  }
}


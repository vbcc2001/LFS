import 'dart:async';
import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f03_game.dart';


//
// import 'package:bonfire/base/custom_base_game.dart';
// import 'package:bonfire/base/game_component.dart';
// import 'package:bonfire/bonfire.dart';
// import 'package:bonfire/camera/camera.dart';
// import 'package:bonfire/camera/camera_config.dart';
// import 'package:bonfire/collision/object_collision.dart';
// import 'package:bonfire/decoration/decoration.dart';
// import 'package:bonfire/enemy/enemy.dart';
// import 'package:bonfire/game_interface/game_interface.dart';
// import 'package:bonfire/joystick/joystick_controller.dart';
// import 'package:bonfire/lighting/lighting.dart';
// import 'package:bonfire/lighting/lighting_component.dart';
// import 'package:bonfire/map/map_game.dart';
// import 'package:bonfire/player/player.dart';
// import 'package:bonfire/util/color_filter_component.dart';
// import 'package:bonfire/util/game_color_filter.dart';
// import 'package:bonfire/util/game_controller.dart';
// import 'package:bonfire/util/interval_tick.dart';
// import 'package:bonfire/util/map_explorer.dart';
// import 'package:bonfire/util/mixins/attackable.dart';
// import 'package:bonfire/util/mixins/pointer_detector.dart';
// import 'package:bonfire/util/value_generator_component.dart';
// import 'package:flame/components.dart' hide JoystickController;
// import 'package:flame/keyboard.dart';
// import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f14_map_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/f01_dungeon_map.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f06_enemy.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f07_enemy_goblin.dart';

import 'f00_utils/f02_component.dart';
import 'f00_utils/f06_player.dart';
import 'f00_utils/f11_lighting.dart';
import 'f00_utils/f13_game_interface.dart';
import 'f01_layer/f01_background.dart';
import 'f01_maps/collision/collision_area.dart';
import 'f01_maps/collision/object_collision.dart';
import 'f01_maps/map_world.dart';
import 'f01_maps/tile/tile_model.dart';
import 'f02_components/f03_fps.dart';
import 'f02_components/f04_background.dart';

/// Is a customGame where all magic of the Bonfire happen.
// class MyGame extends CustomBaseGame with KeyboardEvents {
class MyGame extends CustomBaseGame {


  // @override
  // bool debugMode = true;
  static const INTERVAL_UPDATE_CACHE = 200;
  static const INTERVAL_UPDATE_ORDER = 253;
  static const INTERVAL_UPDATE_COLLISIONS = 1003;

  final fpsTextBox = FpsTextBox();
  /// Context used to access all Flutter power in your game.
  late final BuildContext context;
  /// Represents the character controlled by the user in the game. Instances of this class has actions and movements ready to be used and configured.
  late final Player? player;
  /// The way you can draw things like life bars, stamina and settings. In another words, anything that you may add to the interface to the game.
  late final GameInterface? interface;


  // /// The player-controlling component.
  // final JoystickController? joystickController;
  //

  /// Used to show grid in the map and facilitate the construction and testing of the map
  late final bool constructionMode;
  /// Color grid when `constructionMode` is true
  late final Color? constructionModeColor;

  /// Used to draw area collision in objects.
  late final bool showCollisionArea;

  /// Color of the collision area when `showCollisionArea` is true
  late final Color? collisionAreaColor;

  // /// Used to extensively control game elements
  // late final GameController? gameController;

  /// Used to configure lighting in the game
  late final Color? lightingColorGame;

  /// Used to show in the interface the FPS.
  late final bool showFPS;

  late final TapInGame? onTapDown;
  late final TapInGame? onTapUp;

  bool _firstUpdate = true;

  Iterable<Lighting> _visibleLights = List.empty();
  Iterable<MyComponent> _visibleComponents = List.empty();
  List<ObjectCollision> _visibleCollisions = List.empty();
  List<ObjectCollision> _collisions = List.empty();

  // Iterable<Enemy> enemies() {
  //   return components.where((element) => (element is Enemy)).cast();
  // }

  // IntervalTick? _interval;
  // IntervalTick? _intervalUpdateOder;
  // IntervalTick? _intervalAllCollisions;
  // ColorFilterComponent _colorFilterComponent = ColorFilterComponent(
  //   GameColorFilter(),
  // );
  // LightingComponent? lighting;

  // List<GameDecoration>? _initialDecorations;
  // List<GameComponent>? _initialComponents;
  //
  // GameColorFilter? _colorFilter;
  //
  // ValueChanged<BonfireGame>? onReady;
  //

  MyGame({
    required this.context,
    // required this.map,
    // this.joystickController,
    // this.player,
    // this.interface,
    // List<Enemy>? enemies,
    // List<GameDecoration>? decorations,
    // List<GameComponent>? components,
    // this.constructionMode = false,
    // this.showCollisionArea = false,
    // this.gameController,
    // this.constructionModeColor,
    // this.collisionAreaColor,
    // this.lightingColorGame,
    // this.showFPS = false,
    // this.onReady,
    // this.onTapDown,
    // this.onTapUp,
    // GameColorFilter? colorFilter,
    // CameraConfig? cameraConfig,
  }) {
    // _initialEnemies = enemies;
    // _initialDecorations = decorations;
    // _initialComponents = components;
    // _colorFilter = colorFilter;
    // debugMode = constructionMode;
    //
    // gameController?.gameRef = this;
    // camera = Camera(cameraConfig ?? CameraConfig());
    // camera.gameRef = this;
    // if (camera.config.target == null && player != null) {
    //   camera.moveToTarget(player!);
    // }
    //
    // _interval = IntervalTick(
    //   INTERVAL_UPDATE_CACHE,
    //   tick: _updateTempList,
    // );
    // _intervalUpdateOder = IntervalTick(
    //   INTERVAL_UPDATE_ORDER,
    //   tick: updateOrderPriority,
    // );
    // _intervalAllCollisions = IntervalTick(
    //   INTERVAL_UPDATE_COLLISIONS,
    //   tick: () => scheduleMicrotask(_updateAllCollisions),
    // );
  }
  static const List<String> _imageAssets = [
    'minotaur.png',
  ];
  @override
  bool debugMode = true;
  /// Represents a map (or world) where the game occurs.
  late final MapComponent map;
  @override
  Future<void> onLoad() async {
    super.onLoad();
    print("----------------------");
    print(this.size);
    print("+++++++++++++++++++++");
    await images.loadAll(_imageAssets);
    /****************************************** ColorFilter **************************************/
    // _colorFilterComponent = ColorFilterComponent(
    //   _colorFilter ?? GameColorFilter(),
    // );
    // add(_colorFilterComponent);
    /****************************************** background **************************************/
    // var background = BackgroundComponent(Colors.blueGrey[900]!);
    // add(background);
    /****************************************** map **************************************/

    final double tileSize = 45;
    final String wallBottom = 'tile/wall_bottom.png';
    final String wall = 'tile/wall.png';
    final String wallTop = 'tile/wall_top.png';
    final String wallLeft = 'tile/wall_left.png';
    final String wallBottomLeft = 'tile/wall_bottom_left.png';
    final String wallRight = 'tile/wall_right.png';
    final String floor_1 = 'tile/floor_1.png';
    final String floor_2 = 'tile/floor_2.png';
    final String floor_3 = 'tile/floor_3.png';
    final String floor_4 = 'tile/floor_4.png';
    String randomFloor() {
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
    List<TileModel> tileList = [];
    // tileList.add(TileModel(
    //   sprite: TileModelSprite(path: wallBottom),
    //   x: 1,
    //   y: 1,
    //   // collisions: [ CollisionArea.rectangle(size: Size(tileSize, tileSize)) ],
    //   width: tileSize,
    //   height: tileSize,
    // ));
    List.generate(35, (indexRow) {
      List.generate(70, (indexColumm) {
        if (indexRow == 3 && indexColumm > 2 && indexColumm < 30) {
          tileList.add(TileModel(
            sprite: TileModelSprite(path: wallBottom),
            x: indexColumm.toDouble(),
            y: indexRow.toDouble(),
            // collisions: [
            //   CollisionArea.rectangle(size: Size(tileSize, tileSize))
            // ],
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
            // collisions: [
            //   CollisionArea.rectangle(size: Size(tileSize, tileSize))
            // ],
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
            // collisions: [
            //   CollisionArea.rectangle(size: Size(tileSize, tileSize))
            // ],
            width: tileSize,
            height: tileSize,
          ));
          return;
        }

        if (indexRow > 4 && indexRow < 9 && indexColumm > 2 && indexColumm < 30) {
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
            // collisions: [
            //   CollisionArea.rectangle(size: Size(tileSize, tileSize))
            // ],
            width: tileSize,
            height: tileSize,
          ));
        }
        if (indexRow == 9 && indexColumm == 2) {
          tileList.add(TileModel(
            sprite: TileModelSprite(path: wallBottomLeft),
            x: indexColumm.toDouble(),
            y: indexRow.toDouble(),
            // collisions: [
            //   CollisionArea.rectangle(size: Size(tileSize, tileSize))
            // ],
            width: tileSize,
            height: tileSize,
          ));
        }

        if (indexRow > 3 && indexRow < 9 && indexColumm == 30) {
          tileList.add(TileModel(
            sprite: TileModelSprite(path: wallRight),
            x: indexColumm.toDouble(),
            y: indexRow.toDouble(),
            // collisions: [
            //   CollisionArea.rectangle(size: Size(tileSize, tileSize))
            // ],
            width: tileSize,
            height: tileSize,
          ));
        }
      });
    });
    map = MapComponent(tileList);
    await add(map);


    /****************************************** enemy **************************************/
    List<EnemyComponent> _initialEnemies = [];
    _initialEnemies.add(Goblin(image: images.fromCache('minotaur.png'), position: Vector2.all(100)));
    _initialEnemies.forEach((enemy) => add(enemy));

    // background?.let((bg) => add(bg));
    //
    // add(map);
    // _initialDecorations?.forEach((decoration) => add(decoration));
    // _initialEnemies?.forEach((enemy) => add(enemy));
    // _initialComponents?.forEach((comp) => add(comp));
    // player?.let((p) => add(p));
    // lighting = LightingComponent(color: lightingColorGame ?? Color(0x00000000));
    // add(lighting!);
    // add(interface ?? GameInterface());
    // add(joystickController ?? Joystick());
    // joystickController?.addObserver(player ?? MapExplorer(camera));

  }


  @override
  void render(Canvas canvas) {
    super.render(canvas);
    fpsTextBox.show(canvas, fps(120).toString());
    // TODO: implement render
  }

  @override
  void update(double dt) {
    super.update(dt);
    // TODO: implement update
  }


  //
  // @override
  // void update(double t) {
  //   super.update(t);
  //   _interval?.update(t);
  //   _intervalUpdateOder?.update(t);
  //   _intervalAllCollisions?.update(t);
  //
  //   if (_firstUpdate) {
  //     _firstUpdate = false;
  //     onReady?.call(this);
  //   }
  // }
  //
  // void addGameComponent(GameComponent component) {
  //   add(component);
  // }
  //
  // Iterable<GameComponent> visibleComponents() => _visibleComponents;
  //
  // Iterable<Enemy> visibleEnemies() {
  //   return _visibleComponents.where((element) => (element is Enemy)).cast();
  // }
  //
  // Iterable<Enemy> livingEnemies() {
  //   return enemies().where((element) => !element.isDead).cast();
  // }
  //

  //
  // Iterable<GameDecoration> visibleDecorations() {
  //   return _visibleComponents
  //       .where((element) => (element is GameDecoration))
  //       .cast();
  // }
  //
  // Iterable<GameDecoration> decorations() {
  //   return components.where((element) => (element is GameDecoration)).cast();
  // }
  //
  // Iterable<Lighting> lightVisible() => _visibleLights;
  //
  // Iterable<Attackable> attackables() {
  //   return components.where((element) => (element is Attackable)).cast();
  // }
  //
  // Iterable<Attackable> visibleAttackables() {
  //   return _visibleComponents
  //       .where((element) => (element is Attackable))
  //       .cast();
  // }
  //
  // Iterable<Sensor> visibleSensors() {
  //   return _visibleComponents.where((element) {
  //     return (element is Sensor);
  //   }).cast();
  // }
  //
  // Iterable<ObjectCollision> collisions() {
  //   return _collisions;
  // }
  //
  // Iterable<ObjectCollision> visibleCollisions() {
  //   return _visibleCollisions;
  // }
  //
  // Iterable<T> visibleComponentsByType<T>() {
  //   return _visibleComponents.whereType<T>();
  // }
  //
  // Iterable<T> componentsByType<T>() {
  //   return components.whereType<T>();
  // }
  //
  // ValueGeneratorComponent getValueGenerator(
  //     Duration duration, {
  //       double begin = 0.0,
  //       double end = 1.0,
  //       Curve curve = Curves.decelerate,
  //       VoidCallback? onFinish,
  //       ValueChanged<double>? onChange,
  //     }) {
  //   final valueGenerator = ValueGeneratorComponent(
  //     duration,
  //     end: end,
  //     begin: begin,
  //     curve: curve,
  //     onFinish: onFinish,
  //     onChange: onChange,
  //   );
  //   add(valueGenerator);
  //   return valueGenerator;
  // }
  //
  // @override
  // void onKeyEvent(RawKeyEvent event) {
  //   joystickController?.onKeyboard(event);
  // }
  //
  // @override
  // void onResize(Vector2 size) {
  //   super.onResize(size);
  //   _updateTempList();
  // }
  //
  // void _updateTempList() {
  //   _visibleComponents = components.where((element) {
  //     return (element is GameComponent) && (element).isVisible;
  //   }).cast()
  //     ..toList(growable: false);
  //
  //   _visibleCollisions = _visibleComponents
  //       .where((element) {
  //     return (element is ObjectCollision) && element.containCollision();
  //   })
  //       .toList()
  //       .cast();
  //
  //   _visibleCollisions.addAll(map.getCollisionsRendered());
  //
  //   _visibleLights = _visibleComponents.whereType<Lighting>();
  //
  //   gameController?.notifyListeners();
  // }
  //
  // void _updateAllCollisions() {
  //   _collisions = components
  //       .where((element) {
  //     return (element is ObjectCollision) && (element).containCollision();
  //   })
  //       .toList()
  //       .cast();
  //
  //   _collisions.addAll(map.getCollisions());
  // }
  //
  // GameColorFilter get colorFilter => _colorFilterComponent.colorFilter;
  //
  // Offset worldPositionToScreen(Offset position) {
  //   return camera.worldPositionToScreen(position);
  // }
  //
  // Offset screenPositionToWorld(Offset position) {
  //   return camera.screenPositionToWorld(position);
  // }
  //
  // bool isVisibleInCamera(GameComponent c) {
  //   if (c.shouldRemove) return false;
  //   return camera.isComponentOnCamera(c);
  // }
  //
  // @override
  // void onPointerDown(PointerDownEvent event) {
  //   onTapDown?.call(
  //     this,
  //     event.localPosition,
  //     camera.screenPositionToWorld(event.localPosition),
  //   );
  //   super.onPointerDown(event);
  // }
  //
  // @override
  // void onPointerUp(PointerUpEvent event) {
  //   onTapUp?.call(
  //     this,
  //     event.localPosition,
  //     camera.screenPositionToWorld(event.localPosition),
  //   );
  //   super.onPointerUp(event);
  // }
}
typedef TapInGame = void Function(
    MyGame game,
    Offset screenPosition,
    Offset worldPosition,
    );
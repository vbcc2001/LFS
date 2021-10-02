
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/game.dart';
import 'package:flame/geometry.dart';
import 'package:flame/input.dart';
import 'package:flame/layers.dart';
import 'package:flame/palette.dart';
import 'package:flame_tiled/tiled_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f03_fps.dart';
import '../f02_components/f03_tile_level_1.dart';
import '../f02_components/f01_minotaur.dart';
import 'f01_surface_tiles.dart';



class Scene01 extends FlameGame  with HasKeyboardHandlerComponents,FPSCounter {
  @override
  bool debugMode = true;
  final fpsTextBox = FpsTextBox();
  static const int speed = 200;
  final Vector2 velocity = Vector2(0, 0);
  late final MinotaurGroup minotaur ;
  late final SurfaceTiles tile ;
  late Layer backgroundLayer;
  static const List<String> _imageAssets = [
    'minotaur.png',
  ];
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    camera.viewport = FixedResolutionViewport(Vector2(32*16, 32*16));
    tile = SurfaceTiles();
    await add(tile);



    await images.loadAll(_imageAssets);
    minotaur = MinotaurGroup(images.fromCache('minotaur.png'),Map<String,String>())..position=this.size/2;
    await add(minotaur);

    camera.speed = 1;
    camera.followComponent(minotaur, worldBounds: Rect.fromLTWH(-0, -0, 32*16, 128*16));




    // final knobPaint = BasicPalette.blue.withAlpha(200).paint();
    // final backgroundPaint = BasicPalette.blue.withAlpha(100).paint();
    // var joystick = JoystickComponent(
    //   knob: Circle(radius: 30).toComponent(paint: knobPaint),
    //   background: Circle(radius: 100).toComponent(paint: backgroundPaint),
    //   margin: const EdgeInsets.only(left: 40, bottom: 40),
    // );
    //var player = JoystickPlayer(joystick);

    //add(player);
    //add(joystick);
  }
  // @override
  // Color backgroundColor() => const Color(0xFF38607C);

  @override
  void update(double dt) {
    super.update(dt);
  }
  @override
  void render(Canvas canvas) {
    super.render(canvas);
    fpsTextBox.show(canvas, fps(120).toString());
  }
}
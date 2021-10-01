
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/game.dart';
import 'package:flame/geometry.dart';
import 'package:flame/input.dart';
import 'package:flame/layers.dart';
import 'package:flame/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import '../f02_components/f03_tile_level_1.dart';
import '../f02_components/f01_minotaur.dart';



class Scene01 extends FlameGame  with KeyboardEvents {

  static const int speed = 200;
  final Vector2 velocity = Vector2(0, 0);
  late final MinotaurGroup minotaur ;
  // final tileLevel1 = TileLevel1();
  late Layer backgroundLayer;
  static const List<String> _imageAssets = [
    'minotaur.png',
  ];
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    // Cache all the images.
    await images.loadAll(_imageAssets);
    minotaur = MinotaurGroup(images.fromCache('minotaur.png'),Map<String,String>())..position=this.size/2;

    // add(tileLevel1);
    add(minotaur);
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
  @override
  Color backgroundColor() => const Color(0xFF38607C);

  @override
  void update(double dt) {
    super.update(dt);
    // final displacement = velocity * (speed * dt);
    // minotaur.x = minotaur.x + displacement.x;
    // minotaur.y = minotaur.y +  displacement.y;
  }

  @override
  KeyEventResult onKeyEvent(RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed,) {
    final isKeyDown = event is RawKeyDownEvent;
    // final isKeyUp = event is RawKeyUpEvent;
    if (event.logicalKey == LogicalKeyboardKey.keyA) {
      velocity.x = isKeyDown ? -1 : 0;
      isKeyDown ? minotaur.backMove() : minotaur.backIdle() ;
    } else if (event.logicalKey == LogicalKeyboardKey.keyD) {
      velocity.x = isKeyDown ? 1 : 0;
      isKeyDown ? minotaur.move() : minotaur.idle() ;
    } else if (event.logicalKey == LogicalKeyboardKey.keyW) {
      velocity.y = isKeyDown ? -1 : 0;
    } else if (event.logicalKey == LogicalKeyboardKey.keyS) {
      velocity.y = isKeyDown ? 1 : 0;
    } else if (event.logicalKey == LogicalKeyboardKey.space) {
      velocity.y = isKeyDown ? 1 : 0;
      isKeyDown ? minotaur.jump() : minotaur.idle() ;
    }


    return super.onKeyEvent(event, keysPressed);
  }


}
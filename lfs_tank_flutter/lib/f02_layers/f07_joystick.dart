import 'package:flame/components.dart';
import 'package:flame/geometry.dart';
import 'package:flame/input.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';
import 'package:lfs_tank_flutter/f01_utils/f01_layer_priority.dart';

import '../f06_pages/f04_scene_01/game.dart';

/// The way you cand raw things like life bars, stamina and settings. In another words, anything that you may add to the interface to the game.
class JoystickLayer extends PositionComponent with  HasGameRef<MyGame> {

  @override
  PositionType positionType = PositionType.widget;
  @override
  int get priority => LayerPriority.joystickPriority;

  late final JoystickComponent joystick;
  late final HudButtonComponent fireButton;

  JoystickLayer({ Vector2? position, Vector2? size}) : super(
      position:position,size: size
  );

  @override
  Future<void> onLoad() async {
    super.onLoad();
    final knobPaint = BasicPalette.blue.withAlpha(200).paint();
    final backgroundPaint = BasicPalette.blue.withAlpha(100).paint();
    joystick = JoystickComponent(
      knob: CircleComponent(radius: 30, paint: knobPaint),
      background: CircleComponent(radius: 60, paint: backgroundPaint),
      margin: const EdgeInsets.only(left: 20, bottom: 20),
    );
    add(joystick);

    fireButton = HudButtonComponent(
      button: CircleComponent(radius: 35 ,paint: BasicPalette.white.paint()),
      buttonDown: CircleComponent(radius: 35,paint: BasicPalette.green.paint()),
      margin: const EdgeInsets.only(right: 20, bottom: 20,),
      onPressed: gameRef.player.startFireAnimation
    );
    add(fireButton);
  }
}

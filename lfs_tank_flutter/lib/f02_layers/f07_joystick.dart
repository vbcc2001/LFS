import 'package:flame/components.dart';
import 'package:flame/geometry.dart';
import 'package:flame/input.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';
import 'package:lfs_tank_flutter/f01_utils/f01_layer_priority.dart';

import '../game.dart';

/// The way you cand raw things like life bars, stamina and settings. In another words, anything that you may add to the interface to the game.
class JoystickLayer extends PositionComponent with  HasGameRef<MyGame> {

  @override
  bool get isHud => true;
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
    joystick =JoystickComponent(
      knob: Circle(radius: 30).toComponent(paint: BasicPalette.blue.withAlpha(200).paint()),
      background: Circle(radius: 60).toComponent(paint: BasicPalette.blue.withAlpha(100).paint()),
      margin: const EdgeInsets.only(left: 20, bottom: 20),
    );
    add(joystick);

    fireButton = HudButtonComponent(
      button: Circle(radius: 35).toComponent(paint: BasicPalette.white.paint()),
      buttonDown: Circle(radius: 35).toComponent(paint: BasicPalette.green.paint()),
      margin: const EdgeInsets.only(right: 20, bottom: 20,),
      onPressed: gameRef.player.startFireAnimation
    );
    add(fireButton);
  }
}

import 'package:flame/components.dart';
import 'package:flame/geometry.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';
import 'package:lfs_tank_flutter/f01_utils/f01_layer_priority.dart';


class Joystick extends JoystickComponent  {

  @override
  int get priority => LayerPriority.joystickPriority;
  @override
  bool get isHud => true;

  Joystick() : super(
    knob: Circle(radius: 30).toComponent(paint: BasicPalette.blue.withAlpha(200).paint()),
    background: Circle(radius: 60).toComponent(paint: BasicPalette.blue.withAlpha(100).paint()),
    margin: const EdgeInsets.only(left: 20, bottom: 20),
  );
}

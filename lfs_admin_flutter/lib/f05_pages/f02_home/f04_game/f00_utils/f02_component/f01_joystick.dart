

import 'package:flame/components.dart';
import 'package:flame/geometry.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';

import '../../game.dart';
import '../f01_layer_priority.dart';

class Joystick extends JoystickComponent  {

  Joystick() : super(
    knob: Circle(radius: 30).toComponent(paint: BasicPalette.blue.withAlpha(200).paint()),
    background: Circle(radius: 60).toComponent(paint: BasicPalette.blue.withAlpha(100).paint()),
    margin: const EdgeInsets.only(left: 100, bottom: 100),
  );

  @override
  int get priority => LayerPriority.JoystickPriority;

  @override
  bool get isHud => true;
}

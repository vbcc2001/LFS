import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../f00_utils/f02_component/f09_interface_component.dart';

class BackpackFlagComponent extends InterfaceComponent {


  BackpackFlagComponent(int id,ValueChanged<bool> onTapComponent) : super(
    id: id,
    sprite: Sprite.load('f01_backpack.png'),
    spriteSelected: Sprite.load('f02_book.png'),
    size: Vector2(40,40),
    position: Vector2(150, 20),
    onTapComponent:onTapComponent,
  );
}

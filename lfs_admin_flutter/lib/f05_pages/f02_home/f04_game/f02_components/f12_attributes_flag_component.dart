import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../f00_utils/f02_component/f09_interface_component.dart';

class AttributesFlagComponent extends InterfaceComponent {

  AttributesFlagComponent(int id) : super(
    id: id,
    sprite: Sprite.load('f02_book.png'),
    spriteSelected: Sprite.load('f02_book.png'),
    size: Vector2(40,40),
    position: Vector2(200, 20),
  );
}

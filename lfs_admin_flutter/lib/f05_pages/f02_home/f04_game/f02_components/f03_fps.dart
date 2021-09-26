import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/cupertino.dart';


class FpsTextBox extends TextBoxComponent {
  static final fpsTextPaint = TextPaint(
    config: const TextPaintConfig(color: Color(0xFFFFFFFF)),
  );
  FpsTextBox() : super(
    "",
    boxConfig: TextBoxConfig(
      maxWidth: 400,
      timePerChar: 0.05,
      growingBox: true,
      margins: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    ),
    textRenderer: fpsTextPaint,
  );
}
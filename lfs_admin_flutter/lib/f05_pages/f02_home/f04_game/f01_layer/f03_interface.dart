import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_layer_priority.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f02_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f09_interface_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f10_bar_life_component.dart';

/// The way you cand raw things like life bars, stamina and settings. In another words, anything that you may add to the interface to the game.
class InterfaceLayer extends MyComponent {
  // List<InterfaceComponent> _components = [];

  /// textConfig used to show FPS
  final textConfigGreen = TextPaint( config: TextPaintConfig(color: Colors.green, fontSize: 14),);
  final textConfigRed = TextPaint( config: TextPaintConfig(color: Colors.red, fontSize: 14),);

  InterfaceLayer({ Vector2? position, Vector2? size}) : super(
      position:position,size: size
      // position: Vector2(120, 120),
      // size: Vector2(220, 220),
  );

  @override
  bool get isHud => true;

  @override
  int get priority => LayerPriority.getInterfacePriority(gameRef.highestPriority);

  @override
  Future<void> onLoad() async {
    add(BarLifeComponent());
    add(InterfaceComponent(
      sprite: Sprite.load('blue_button1.png'),
      spriteSelected: Sprite.load('blue_button2.png'),
      size: Vector2(40,40),
      id: 5,
      position: Vector2(150, 20),
    ));
    add(InterfaceComponent(
      sprite: Sprite.load('blue_button1.png'),
      spriteSelected: Sprite.load('blue_button2.png'),
      size: Vector2(40,40),
      id: 5,
      position: Vector2(200, 20),
    ));
    add(TextComponent(
      'play-01',
      position: Vector2(260, 30),
      // size: Vector2(40,40),
      textRenderer:TextPaint( config: TextPaintConfig(color: Colors.white),)
    ));
  }

  @override
  void render(Canvas c) {
    super.render(c);
    // _components.forEach((i) => i.render(c));
    if (gameRef.showFPS) {
      double? fps = gameRef.fps(100);
      if (fps >= 58) { textConfigGreen.render(c, 'FPS: ${fps.toStringAsFixed(2)}', Vector2((gameRef.size.x) - 100, 20),);}
      else { textConfigRed.render(c, 'FPS: ${fps.toStringAsFixed(2)}', Vector2((gameRef.size.x) - 100, 20),);}
    }
  }

  @override
  void update(double dt) {
    super.update(dt);
    // _components.forEach((i) => i.update(dt) );
  }

  @override
  void onGameResize(Vector2 size) {
    // _components.forEach((i) => i.onGameResize(size));
    super.onGameResize(size);
  }
}

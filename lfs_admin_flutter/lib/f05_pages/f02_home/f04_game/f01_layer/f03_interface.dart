import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_layer_priority.dart';
import '../f00_utils/f02_component/f02_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f11_backpack_flag_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f12_attributes_flag_component.dart';

import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f10_bar_life_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f13_backpack_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f14_attributes_component.dart';

/// The way you cand raw things like life bars, stamina and settings. In another words, anything that you may add to the interface to the game.
class InterfaceLayer extends MyComponent {

  /// textConfig used to show FPS
  final textConfigGreen = TextPaint( config: TextPaintConfig(color: Colors.green, fontSize: 14),);
  final textConfigRed = TextPaint( config: TextPaintConfig(color: Colors.red, fontSize: 14),);
  final backpackComponent  = BackpackComponent(4);
  final attributesComponent  = AttributesComponent(5);
  InterfaceLayer({ Vector2? position, Vector2? size}) : super(
      position:position,size: size
  );

  @override
  bool get isHud => true;

  @override
  int get priority => LayerPriority.InterfacePriority;

  @override
  Future<void> onLoad() async {
    add(BarLifeComponent());
    // add(BackpackFlagComponent(2, (selected) {this.showBackpack(selected);}));
    // add(AttributesFlagComponent(3, (selected) {this.showAttributesComponent(selected);}));
    add(TextComponent(
      'player',
      position: Vector2(260, 30),
      // size: Vector2(40,40),
      textRenderer:TextPaint( config: TextPaintConfig(color: Colors.white),)
    ));
  }
  void showBackpack(bool show)  => show ? add(backpackComponent): remove(backpackComponent);
  void showAttributesComponent(bool show)  => show ? add(attributesComponent): remove(attributesComponent);

  @override
  void render(Canvas c) {
    super.render(c);
    if (gameRef.showFPS) {
      double? fps = gameRef.fps(100);
      if (fps >= 58) { textConfigGreen.render(c, 'FPS: ${fps.toStringAsFixed(2)}', Vector2((gameRef.size.x) - 100, 20),);}
      else { textConfigRed.render(c, 'FPS: ${fps.toStringAsFixed(2)}', Vector2((gameRef.size.x) - 100, 20),);}
    }
  }
}

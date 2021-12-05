import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:lfs_tank_flutter/f01_utils/f01_layer_priority.dart';
import 'package:lfs_tank_flutter/f03_components/f10_bar_life_component.dart';
import 'package:lfs_tank_flutter/f03_components/f11_backpack_flag_component.dart';
import 'package:lfs_tank_flutter/f03_components/f12_attributes_flag_component.dart';
import 'package:lfs_tank_flutter/f03_components/f13_backpack_component.dart';
import 'package:lfs_tank_flutter/f03_components/f14_attributes_component.dart';

import '../f06_pages/f04_scene_01/game.dart';


/// The way you cand raw things like life bars, stamina and settings. In another words, anything that you may add to the interface to the game.
class InterfaceLayer extends PositionComponent with  HasGameRef<MyGame> {

  /// textConfig used to show FPS
  final textConfigGreen = TextPaint( config: const TextPaintConfig(color: Colors.green, fontSize: 14),);
  final textConfigRed = TextPaint( config: const TextPaintConfig(color: Colors.red, fontSize: 14),);
  final backpackComponent  = BackpackComponent();
  final attributesComponent  = AttributesComponent();
  @override
  bool get isHud => true;
  @override
  int get priority => LayerPriority.interfacePriority;

  InterfaceLayer({ Vector2? position, Vector2? size}) : super(
      position:position,size: size
  );

  @override
  Future<void> onLoad() async {
    super.onLoad();
    add(BarLifeComponent());
    add(BackpackFlagComponent((isOpen) => showBackpack(isOpen)));
    add(AttributesFlagComponent((isOpen) => showAttributesComponent(isOpen)));
    add(TextComponent(
      'player',
      position: Vector2(260, 30),
      textRenderer:TextPaint( config: const TextPaintConfig(color: Colors.white),)
    ));
  }
  void showBackpack(bool show)  => show ? add(backpackComponent): remove(backpackComponent);
  void showAttributesComponent(bool show)  => show ? add(attributesComponent): remove(attributesComponent);

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    if (gameRef.showFPS) {
      double? fps = gameRef.fps(100);
      if (fps >= 58) { textConfigGreen.render(canvas, 'FPS: ${fps.toStringAsFixed(2)}', Vector2((gameRef.size.x) - 100, 20),);}
      else { textConfigRed.render(canvas, 'FPS: ${fps.toStringAsFixed(2)}', Vector2((gameRef.size.x) - 100, 20),);}
    }
  }
}

import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:lfs_tank_flutter/f04_mixin/f01_pointer_detector.dart';
import 'package:lfs_tank_flutter/f04_mixin/f11_lighting.dart';

import 'package:ordered_set/comparing.dart';
import 'package:ordered_set/ordered_set.dart';

/// CustomBaseGame created to use `Listener` to capture touch screen gestures.
/// Apply zoom in canvas.
/// Reorder components per time frame.
class CustomBaseGame extends FlameGame with FPSCounter,PointerDetector {

  final textConfigGreen = TextPaint( config: const TextPaintConfig(color: Colors.green, fontSize: 14),);
  final textConfigRed = TextPaint( config: const TextPaintConfig(color: Colors.red, fontSize: 14),);
  /// Used to show in the interface the FPS.
  bool get showFPS => false;
  // final bool showFPS = false;
  /// Components added by the [addLater] method
  final List<Component> _addLater = [];
  /// The list of components to be updated and rendered by the base game.
  OrderedSet<Component> components = OrderedSet( Comparing.on((c1) => c1.priority) );
  // List<ObjectCollision> collisions = List.empty();

  static const int INTERVAL_UPDATE_CACHE = 200;
  static const int INTERVAL_UPDATE_ORDER = 253;
  static const int INTERVAL_UPDATE_COLLISIONS = 1003;

  /// 需要显示的组件
  Iterable<Component> visibleComponents = List.empty();
  /// 需要显示的碰撞元素
  // List<ObjectCollision> visibleCollisions = List.empty();
  /// 需要显示的灯光元素
  Iterable<Lighting> visibleLights = List.empty();

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    if (showFPS) {
      double fpsCount = fps(100);
      if (fpsCount >= 58) { textConfigGreen.render(canvas, 'FPS: ${fpsCount.toStringAsFixed(2)}', Vector2((size.x) - 100, 20),);}
      else { textConfigRed.render(canvas, 'FPS: ${fpsCount.toStringAsFixed(2)}', Vector2((size.x) - 100, 20),);}
    }
  }

  @override
  void onGameResize(Vector2 canvasSize) {
    super.onGameResize(canvasSize);
  }
}

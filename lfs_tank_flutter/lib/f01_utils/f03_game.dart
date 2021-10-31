import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:lfs_tank_flutter/f04_mixin/f01_pointer_detector.dart';
import 'package:lfs_tank_flutter/f04_mixin/f11_lighting.dart';

import 'package:ordered_set/comparing.dart';
import 'package:ordered_set/ordered_set.dart';

/// CustomBaseGame created to use `Listener` to capture touch screen gestures.
/// Apply zoom in canvas.
/// Reorder components per time frame.
class CustomBaseGame extends FlameGame with FPSCounter,PointerDetector {

  // @override
  // bool debugMode = true;
  /// Used to show in the interface the FPS.
  final bool showFPS = true;
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
  void onGameResize(Vector2 canvasSize) {
    super.onGameResize(canvasSize);
  }
}

// import 'package:bonfire/base/game_component.dart';
// import 'package:bonfire/bonfire.dart';
// import 'package:bonfire/camera/camera.dart';
// import 'package:bonfire/camera/camera_config.dart';
// import 'package:bonfire/util/bonfire_game_ref.dart';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/collision/object_collision.dart';
import 'f01_mixin/f01_pointer_detector.dart';

import 'package:ordered_set/comparing.dart';
import 'package:ordered_set/ordered_set.dart';

import 'f01_mixin/f11_lighting.dart';
import 'f02_component/f02_component.dart';
import 'f03_interval_tick.dart';
import 'f04_camera.dart';

/// CustomBaseGame created to use `Listener` to capture touch screen gestures.
/// Apply zoom in canvas.
/// Reorder components per time frame.
// abstract class CustomBaseGame extends Game with FPSCounter, PointerDetector {
class CustomBaseGame extends FlameGame with FPSCounter,PointerDetector {

  @override
  bool debugMode = true;

  MyCamera myCamera = MyCamera();

  /// Used to show in the interface the FPS.
  final bool showFPS = true;

  /// variable that keeps the highest rendering priority per frame. This is used to determine the order in which to render the `interface`, `lighting` and `joystick`
  int _highestPriority = 10000;

  /// Get of the _highestPriority
  int get highestPriority => _highestPriority;

  /// Components added by the [addLater] method
  final List<Component> _addLater = [];
  /// The list of components to be updated and rendered by the base game.
  OrderedSet<Component> components = OrderedSet( Comparing.on((c1) => c1.priority) );
  List<ObjectCollision> collisions = List.empty();

  static const int INTERVAL_UPDATE_CACHE = 200;
  static const int INTERVAL_UPDATE_ORDER = 253;
  static const int INTERVAL_UPDATE_COLLISIONS = 1003;

  /// 需要显示的组件
  Iterable<Component> visibleComponents = List.empty();
  /// 需要显示的碰撞元素
  List<ObjectCollision> visibleCollisions = List.empty();
  /// 需要显示的灯光元素
  Iterable<Lighting> visibleLights = List.empty();

  @override
  Color backgroundColor() => const Color(0xFF38607C);

  late IntervalTick _interval;

  CustomBaseGame():super(){
    ///定时更新需要显示的组件
    _interval = IntervalTick( CustomBaseGame.INTERVAL_UPDATE_CACHE,  tick: _updateVisibleComponents );
  }

  @mustCallSuper
  Future<void> preAdd(Component c) async {
    if (debugMode && c is PositionComponent) { c.debugMode = true;}
    // first time resize
    c.onGameResize(size);
    final loadFuture = c.onLoad();
    if (loadFuture != null) { await loadFuture; }
    if (c is PositionComponent) { c.children.forEach(preAdd); }
  }

  @override
  Future<void> add(Component c) async {
    super.add(c);
    // await preAdd(c);
    _addLater.add(c);
  }

  @override
  void update(double t) {
    super.update(t);
    if (_addLater.isNotEmpty) {
      final addNow = _addLater.toList(growable: false);
      components.addAll(addNow);
      _addLater.clear();
      // for (var comp in addNow) { comp.onMount(); }
    }
    //
    // _highestPriority = 0;
    // for (var comp in components) {
    //   comp.update(t);
    //   if (comp.priority > _highestPriority) {
    //     _highestPriority = comp.priority;
    //   }
    // }
    // components.removeWhere((c) => c.shouldRemove);
    //
    // // camera.update(t);
    // _interval.update(t);
  }




  @override
  void onGameResize(Vector2 canvasSize) {
    super.onGameResize(canvasSize);
    _updateVisibleComponents();
  }

  void _updateVisibleComponents() {
    // visibleComponents = components.where((element) => (element is Component) && element.isVisible).cast()..toList(growable: false);
    visibleComponents = components.where((element) => (element is Component) ).cast()..toList(growable: false);
    visibleLights = visibleComponents.whereType<Lighting>();
  }

  // /// Components added by the [addLater] method
  // final List<Component> _addLater = [];
  //
  // /// to get the components that contain gestures
  // Iterable<PointerDetectorHandler> get _gesturesComponents {
  //   return components
  //       .where((c) => _hasGesture(c))
  //       .cast<PointerDetectorHandler>();
  // }
  //
  // @override
  // void onPointerCancel(PointerCancelEvent event) {
  //   for (final c in _gesturesComponents) {
  //     c.handlerPointerCancel(event);
  //   }
  // }
  //
  // @override
  // void onPointerUp(PointerUpEvent event) {
  //   for (final c in _gesturesComponents) {
  //     c.handlerPointerUp(event);
  //   }
  // }
  //
  // @override
  // void onPointerMove(PointerMoveEvent event) {
  //   for (final c in _gesturesComponents) {
  //     c.handlerPointerMove(event);
  //   }
  // }
  //
  // @override
  // void onPointerDown(PointerDownEvent event) {
  //   for (final c in _gesturesComponents) {
  //     c.handlerPointerDown(event);
  //   }
  // }
  //
  // @override
  // void onPointerHover(PointerHoverEvent event) {
  //   for (final c in _gesturesComponents) {
  //     c.handlerPointerHover(event);
  //   }
  // }
  //
  // @override
  // void onPointerSignal(PointerSignalEvent event) {
  //   for (final c in _gesturesComponents) {
  //     c.handlerPointerSignal(event);
  //   }
  // }
  //
  // /// This method is called for every component added, both via [add] and [addLater] methods.
  // ///
  // /// You can use this to setup your mixins, pre-calculate stuff on every component, or anything you desire.
  // /// By default, this calls the first time resize for every component, so don't forget to call super.preAdd when overriding.
  // @mustCallSuper
  // Future<void> preAdd(Component c) async {
  //   if (debugMode && c is PositionComponent) {
  //     c.debugMode = true;
  //   }
  //
  //   if (c is BonfireHasGameRef) {
  //     (c as BonfireHasGameRef).gameRef = this;
  //   }
  //
  //   // first time resize
  //   c.onGameResize(size);
  //
  //   final loadFuture = c.onLoad();
  //
  //   if (loadFuture != null) {
  //     await loadFuture;
  //   }
  //
  //   if (c is PositionComponent) {
  //     c.children.forEach(preAdd);
  //   }
  // }
  //
  // /// Adds a new component to the components list.
  // ///
  // /// Also calls [preAdd], witch in turn sets the current size on the component (because the resize hook won't be called until a new resize happens).
  // Future<void> add(Component c) async {
  //   await preAdd(c);
  //   _addLater.add(c);
  // }
  //
  // /// This implementation of render basically calls [renderComponent] for every component, making sure the canvas is reset for each one.
  // ///
  // /// You can override it further to add more custom behaviour.
  // /// Beware of however you are rendering components if not using this; you must be careful to save and restore the canvas to avoid components messing up with each other.
  // @override
  // void render(Canvas canvas) {
  //   canvas.save();
  //
  //   canvas.translate(size.x / 2, size.y / 2);
  //   canvas.scale(camera.config.zoom);
  //   canvas.translate(-camera.position.dx, -camera.position.dy);
  //
  //   for (final comp in components) {
  //     renderComponent(canvas, comp);
  //   }
  //
  //   if (debugMode) {
  //     for (final comp in components) {
  //       renderDebugMode(comp, canvas);
  //     }
  //   }
  //
  //   canvas.restore();
  // }
  //
  // /// This renders a single component obeying BaseGame rules.
  // ///
  // /// It translates the camera unless hud, call the render method and restore the canvas.
  // /// This makes sure the canvas is not messed up by one component and all components render independently.
  // void renderComponent(Canvas canvas, Component comp) {
  //   if (comp is GameComponent) {
  //     if (!comp.isHud && !comp.isVisible) return;
  //   }
  //
  //   canvas.save();
  //
  //   if (comp.isHud) {
  //     canvas.translate(camera.position.dx, camera.position.dy);
  //     canvas.scale(1 / camera.config.zoom);
  //     canvas.translate(-size.x / 2, -size.y / 2);
  //   }
  //
  //   comp.render(canvas);
  //   canvas.restore();
  // }
  //
  // void renderDebugMode(Component comp, Canvas canvas) {
  //   if (comp is GameComponent && debugMode) {
  //     comp.renderDebugMode(canvas);
  //   }
  //
  //   if (comp is MapGame && debugMode) {
  //     comp.renderDebugMode(canvas);
  //   }
  // }
  //
  // /// This implementation of update updates every component in the list.
  // ///
  // /// It also actually adds the components that were added by the [addLater] method, and remove those that are marked for destruction via the [Component.destroy] method.
  // /// You can override it further to add more custom behaviour.
  // @override
  // void update(double t) {
  //   if (_addLater.isNotEmpty) {
  //     final addNow = _addLater.toList(growable: false);
  //     components.addAll(addNow);
  //     _addLater.clear();
  //     for (var comp in addNow) {
  //       comp.onMount();
  //     }
  //   }
  //
  //   _highestPriority = 0;
  //   for (var comp in components) {
  //     comp.update(t);
  //     if (comp.priority > _highestPriority) {
  //       _highestPriority = comp.priority;
  //     }
  //   }
  //
  //   components.removeWhere((c) => c.shouldRemove);
  //
  //   camera.update(t);
  // }
  //
  // /// This implementation of resize passes the resize call along to every component in the list, enabling each one to make their decisions as how to handle the resize.
  // ///
  // /// It also updates the [size] field of the class to be used by later added components and other methods.
  // /// You can override it further to add more custom behaviour, but you should seriously consider calling the super implementation as well.
  // @override
  // @mustCallSuper
  // void onResize(Vector2 size) {
  //   super.onResize(size);
  //   for (var comp in components) {
  //     comp.onGameResize(size);
  //   }
  // }
  //
  // bool debugMode = false;
  //
  // /// Returns the current time in seconds with microseconds precision.
  // ///
  // /// This is compatible with the `dt` value used in the [update] method.
  // double currentTime() {
  //   return DateTime.now().microsecondsSinceEpoch.toDouble() /
  //       Duration.microsecondsPerSecond;
  // }
  //
  // /// Verify if the compont contain gestures.
  // bool _hasGesture(Component c) {
  //   return ((c is GameComponent && c.isVisible) || c.isHud) &&
  //       (c is PointerDetectorHandler &&
  //           (c as PointerDetectorHandler).hasGesture());
  // }
  //
  // /// reorder components by priority
  // void updateOrderPriority() {
  //   components.rebalanceAll();
  // }
}

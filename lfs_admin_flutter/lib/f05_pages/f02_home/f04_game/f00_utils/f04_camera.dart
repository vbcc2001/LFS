import 'dart:math' as math;
import 'dart:ui';

// import 'package:bonfire/base/bonfire_game.dart';
// import 'package:bonfire/base/game_component.dart';
// import 'package:bonfire/bonfire.dart';
// import 'package:bonfire/util/bonfire_game_ref.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../game.dart';
import 'f02_component/f02_component.dart';



class MyCamera extends Component with HasGameRef<MyGame> {
  bool _isMoving = false;
  double _spacingMap = 32.0;
  Offset position = Offset.zero;
  bool smoothCameraEnable = false;
  double smoothCameraSpeed = 1.0;

  ///Player movement window before the camera moves
  Size sizeMovementWindow =const Size(50, 50);
  /// When this true the camera remains within the map area
  bool moveOnlyMapArea = false;
  /// camera zoom configurarion. default: 1
  double zoom = 1.0;
  /// Component that the camera will focus on / follow
  MyComponent? target;


  bool get isMoving => _isMoving;

  bool isRectOnCamera(Rect c) {
    return cameraRectWithSpacing.overlaps(c);
  }
  Rect get cameraRectWithSpacing => Rect.fromCenter(
    center: Offset(position.dx, position.dy),
    width: cameraRect.width + (_spacingMap * 2),
    height: cameraRect.height + (_spacingMap * 2),
  );

  Rect get cameraRect => Rect.fromCenter(
    center: Offset(position.dx, position.dy),
    width: (gameRef.size.x) * _zoomFactor(),
    height: (gameRef.size.y) * _zoomFactor(),
  );
  double _zoomFactor() {
    if (zoom > 1) return 1;
    return 1 / zoom;
  }


  /// Remaining time in seconds for the camera shake.
  double _shakeTimer = 0.0;

  /// The intensity of the current shake action.
  double _shakeIntensity = 0.0;

  /// Save the last position before shaking starts
  Offset _lastPositionBeforeShake = Offset.zero;

  double defaultShakeIntensity = 8.0; // in pixels
  double defaultShakeDuration = 1; // in seconds

  void moveTop(double displacement) {
    position = position.translate(0, displacement * -1);
  }

  void moveRight(double displacement) {
    position = position.translate(displacement, 0);
  }

  void moveDown(double displacement) {
    position = position.translate(0, displacement);
  }

  void moveUp(double displacement) {
    position = position.translate(displacement * -1, 0);
  }

  // void moveToPositionAnimated(
  //     Offset position, {
  //       double zoom = 1,
  //       VoidCallback? finish,
  //       Duration? duration,
  //       Curve curve = Curves.decelerate,
  //     }) {
  //   if (zoom <= 0.0 || _isMoving) return;
  //   target = null;
  //   _isMoving = true;
  //
  //   double diffX = this.position.dx - position.dx;
  //   double diffY = this.position.dy - position.dy;
  //   double originX = this.position.dx;
  //   double originY = this.position.dy;
  //
  //   double diffZoom = zoom - zoom;
  //   double initialZoom = zoom;
  //
  //   gameRef.getValueGenerator(
  //     duration ?? Duration(seconds: 1),
  //     onChange: (value) {
  //       this.position = this.position.copyWith(
  //         x: originX - (diffX * value),
  //       );
  //       this.position = this.position.copyWith(
  //         y: originY - (diffY * value),
  //       );
  //       zoom = initialZoom - (diffZoom * value);
  //
  //       if (moveOnlyMapArea) {
  //         _keepInMapArea();
  //       }
  //     },
  //     onFinish: () {
  //       _isMoving = false;
  //       finish?.call();
  //     },
  //     curve: curve,
  //   ).start();
  // }

  // void moveToTargetAnimated(
  //     GameComponent target, {
  //       double zoom = 1,
  //       VoidCallback? finish,
  //       Duration? duration,
  //       Curve curve = Curves.decelerate,
  //     }) {
  //   if (zoom <= 0.0 || _isMoving) return;
  //   target = null;
  //   _isMoving = true;
  //
  //   double originX = this.position.dx;
  //   double originY = this.position.dy;
  //
  //   double diffZoom = zoom - zoom;
  //   double initialZoom = zoom;
  //
  //   gameRef.getValueGenerator(
  //     duration ?? Duration(seconds: 1),
  //     onChange: (value) {
  //       double diffX = originX - target.position.center.dx;
  //       double diffY = originY - target.position.center.dy;
  //
  //       this.position = position.copyWith(x: originX - (diffX * value));
  //       this.position = position.copyWith(y: originY - (diffY * value));
  //       zoom = initialZoom - (diffZoom * value);
  //
  //       if (moveOnlyMapArea) {
  //         _keepInMapArea();
  //       }
  //     },
  //     onFinish: () {
  //       target = target;
  //       _isMoving = false;
  //       finish?.call();
  //     },
  //     curve: curve,
  //   ).start();
  // }

  void moveToPosition(Offset position) {
    target = null;
    this.position = position;
  }

  // void moveToPlayer() {
  //   target = gameRef.player;
  // }

  // void moveToTarget(MyComponent target) {
  //   target = target;
  // }
  //
  // void moveToPlayerAnimated({
  //   Duration? duration,
  //   VoidCallback? finish,
  //   double zoom = 1,
  //   Curve curve = Curves.decelerate,
  // }) {
  //   if (gameRef.player == null) return;
  //   moveToTargetAnimated(
  //     gameRef.player!,
  //     zoom: zoom,
  //     finish: finish,
  //     duration: duration,
  //     curve: curve,
  //   );
  // }

  // void _followTarget(
  //     double dt, {
  //       double sizeHorizontal = 50,
  //       double sizeVertical = 50,
  //     }) {
  //   if (config.target == null) return;
  //
  //   _moveCameraToTarget(
  //     dt,
  //     enableSmooth: config.smoothCameraEnable,
  //     sizeHorizontal: sizeHorizontal,
  //     sizeVertical: sizeVertical,
  //   );
  //
  //   if (config.moveOnlyMapArea) {
  //     _keepInMapArea();
  //   }
  // }

  // void _moveCameraToTarget(
  //     double dt, {
  //       double sizeHorizontal = 50,
  //       double sizeVertical = 50,
  //       bool enableSmooth = false,
  //     }) {
  //   final speedSmooth = config.smoothCameraSpeed;
  //
  //   double horizontal = enableSmooth ? 0 : sizeHorizontal;
  //   double vertical = enableSmooth ? 0 : sizeVertical;
  //
  //   final screenCenter = Offset(
  //     gameRef.size.x / 2,
  //     gameRef.size.y / 2,
  //   );
  //
  //   final centerTarget = _getCenterTarget();
  //   final positionTarget = worldPositionToScreen(centerTarget);
  //
  //   final horizontalDistance = screenCenter.dx - positionTarget.dx;
  //   final verticalDistance = screenCenter.dy - positionTarget.dy;
  //
  //   double newX = this.position.dx;
  //   double newY = this.position.dy;
  //
  //   if (horizontalDistance.abs() > horizontal) {
  //     newX = this.position.dx +
  //         (horizontalDistance > 0
  //             ? horizontal - horizontalDistance
  //             : -horizontalDistance - horizontal);
  //   }
  //
  //   if (verticalDistance.abs() > vertical) {
  //     newY = this.position.dy +
  //         (verticalDistance > 0
  //             ? vertical - verticalDistance
  //             : -verticalDistance - vertical);
  //   }
  //
  //   this.position = this.position.copyWith(
  //     x: enableSmooth
  //         ? lerpDouble(this.position.dx, newX, dt * speedSmooth)
  //         : newX,
  //     y: enableSmooth
  //         ? lerpDouble(this.position.dy, newY, dt * speedSmooth)
  //         : newY,
  //   );
  // }

  // void animateZoom({
  //   required double zoom,
  //   Duration? duration,
  //   VoidCallback? finish,
  //   Curve curve = Curves.decelerate,
  // }) {
  //   if (zoom <= 0.0 || _isMoving) return;
  //
  //   _isMoving = true;
  //
  //   double diffZoom = config.zoom - (zoom);
  //   double initialZoom = config.zoom;
  //
  //   gameRef.getValueGenerator(
  //     duration ?? Duration(seconds: 1),
  //     onChange: (value) {
  //       config.zoom = initialZoom - (diffZoom * value);
  //     },
  //     onFinish: () {
  //       _isMoving = false;
  //       finish?.call();
  //     },
  //     curve: curve,
  //   ).start();
  // }
  //
  // bool isComponentOnCamera(GameComponent c) {
  //   return isRectOnCamera(c.position.rect);
  // }
  //
  // bool contains(Offset c) {
  //   return cameraRectWithSpacing.contains(c);
  // }
  //

  //
  // Offset worldPositionToScreen(Offset position) {
  //   return position.translate(
  //     this.cameraRect.left * -1,
  //     this.cameraRect.top * -1,
  //   );
  // }
  //
  // Offset screenPositionToWorld(Offset position) {
  //   double diffX = position.dx - gameRef.size.x / 2;
  //   double diffY = position.dy - gameRef.size.y / 2;
  //   return Offset(
  //     this.cameraRect.center.dx + (diffX / config.zoom),
  //     this.cameraRect.center.dy + (diffY / config.zoom),
  //   );
  // }
  //
  // /// Applies a shaking effect to the camera for [duration] seconds and with
  // /// [intensity] expressed in pixels. If [focusPlayerOnFinishShake] is true,
  // /// camera will focus on player after shaking instead of its last position
  // void shake({
  //   double? duration,
  //   double? intensity,
  // }) {
  //   _shakeTimer += duration ?? defaultShakeDuration;
  //   _shakeIntensity = intensity ?? defaultShakeIntensity;
  // }
  //
  // /// Whether the camera is currently shaking or not.
  // bool get shaking => _shakeTimer > 0.0;
  //
  // /// Buffer to re-use for the shake delta.
  // final _shakeBuffer = Vector2.zero();
  //
  // /// The random number generator to use for shaking
  // final _shakeRng = math.Random();
  //
  // /// Generates one value between [-1, 1] * [_shakeIntensity] used once for each
  // /// of the axis in the shake delta.
  // double _shakeValue() => (_shakeRng.nextDouble() - 0.5) * 2 * _shakeIntensity;
  //
  // /// Generates a random [Offset] of displacement applied to the camera.
  // /// This will be a random [Offset] every tick causing a shakiness effect.
  // Offset _shakeDelta() {
  //   if (shaking) {
  //     _shakeBuffer.setValues(_shakeValue(), _shakeValue());
  //   } else if (!_shakeBuffer.isZero()) {
  //     _shakeBuffer.setZero();
  //   }
  //   return _shakeBuffer.toOffset();
  // }
  //
  // void update(double dt) {
  //   _doShake();
  //
  //   _followTarget(
  //     dt,
  //     sizeVertical: config.sizeMovementWindow.height,
  //     sizeHorizontal: config.sizeMovementWindow.width,
  //   );
  // }
  //
  // void _doShake() {
  //   // Update last position if not shaking
  //   if (!shaking) {
  //     _lastPositionBeforeShake = this.position;
  //     return;
  //   }
  //   // Generate shake Offset
  //   final shake = _shakeDelta();
  //
  //   // Update camera position applying shake effect
  //   this.position = this.position + shake;
  //   if (shaking) {
  //     _shakeTimer -= 0.1;
  //     // Go back to target or last position before shake
  //     if (_shakeTimer < 0.0) {
  //       this.position = target?.vectorPosition.toOffset() ??
  //           _lastPositionBeforeShake;
  //       _shakeTimer = 0.0;
  //     }
  //   }
  // }
  //
  void updateSpacingVisibleMap(double space) {
    _spacingMap = space;
  }
  //
  // void _keepInMapArea() {
  //   if (!hasGameRef) return;
  //   final startPosition = gameRef.map.mapStartPosition;
  //   final sizeMap = gameRef.map.mapSize;
  //   if (startPosition == null || sizeMap == null) return;
  //
  //   double zoomFactor = 1 / config.zoom;
  //
  //   double gameWidth = (gameRef.size.x * zoomFactor) / 2;
  //   double gameHeight = (gameRef.size.y * zoomFactor) / 2;
  //
  //   final limitX = (startPosition.x + gameWidth);
  //   final limitY = (startPosition.y + gameHeight);
  //   final limitMaxX = (sizeMap.width - gameWidth);
  //   final limitMaxY = (sizeMap.height - gameHeight);
  //
  //   if (this.position.dx > limitMaxX) {
  //     this.position = Offset(limitMaxX, position.dy);
  //   }
  //   if (this.position.dy > limitMaxY) {
  //     this.position = Offset(position.dx, limitMaxY);
  //   }
  //
  //   if (this.position.dx < limitX) {
  //     this.position = Offset(limitX, position.dy);
  //   }
  //   if (this.position.dy < limitY) {
  //     this.position = Offset(position.dx, limitY);
  //   }
  // }
  //

  //
  // Offset _getCenterTarget() {
  //   if (target?.isObjectCollision() == true) {
  //     return (target as ObjectCollision).rectCollision.center;
  //   }
  //   return target?.position.rect.center ?? Offset.zero;
  // }
}

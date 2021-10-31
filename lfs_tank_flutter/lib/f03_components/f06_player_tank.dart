
import 'dart:math';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart' show Alignment, BuildContext, Colors;
import 'package:flutter/services.dart';
import 'package:lfs_tank_flutter/f01_utils/f01_layer_priority.dart';
import 'package:lfs_tank_flutter/f01_utils/f02_rive_canvas.dart';
import 'package:lfs_tank_flutter/f01_utils/f10_direction_animation.dart';
import 'package:lfs_tank_flutter/f04_mixin/f02_component.dart';
import 'package:lfs_tank_flutter/f04_mixin/f07_attackable.dart';
import 'package:lfs_tank_flutter/f04_mixin/f09_movement.dart';
import 'package:lfs_tank_flutter/f04_mixin/f11_lighting.dart';
import 'package:rive/rive.dart';
import 'package:flutter/material.dart';
import '../game.dart';
import 'f01_joystick_component.dart';
import 'f03_rive_component.dart';
import 'f06_player_component.dart';

//AutomaticRandomMovement
class PlayerTank extends PositionComponent with HasGameRef<MyGame>,MyComponent,Lighting,KeyboardHandler, Attackable {

  /// The file to draw on the canvas
  late RiveFile riveFile;
  /// If this is non Null, this will be drawn instead of [riveFile.mainArtboard]
  late String artboardName;
  /// If the [animationController] is non Null it will be automatically animated
  late RiveAnimationController fireAnimation = SimpleAnimation('fire');
  late RiveAnimationController runAnimation = SimpleAnimation('run');
  final alignment = Alignment.center;
  final fit = BoxFit.contain;

  late RiveCanvas riveCanvas;
  late Artboard artboard;
  late Vector2 canvasSize;

  static final spriteSize = Vector2(64, 64);
  final Vector2 velocity = Vector2(0, 0);

  double maxStamina = 100.0;
  double stamina = 100;
  double maxSpeed = 100.0;
  double speed = 100.0;
  @override
  int get priority => LayerPriority.components;

  PlayerTank( {required Vector2 position}) : super( position:position,size:spriteSize,anchor: Anchor.center,);

  @override
  Future<void> onLoad() async {
    super.onLoad();
    // 添加 Tank 动画
    RiveFile riveFile = await RiveFile.asset('assets/rives/tank.riv');
    artboard =  riveFile.artboardByName("01")!;
    artboard.addController(fireAnimation);
    artboard.addController(runAnimation);
    riveCanvas = RiveCanvas(artboard: artboard, context: gameRef.context);
    artboard.advance(0);
    stopFireAnimation();
    stopRunAnimation();
    // 添加 Light
    radius=width * 1.5;
    blurBorder= width * 1.5;
    color=Colors.transparent;
    gameRef.lightingLayer.lights.add(this);
  }

  void startFireAnimation() => fireAnimation.isActive = true;
  void stopFireAnimation() => fireAnimation.isActive = false;

  void startRunAnimation() => runAnimation.isActive = true;
  void stopRunAnimation() => runAnimation.isActive = false;

  @override
  void update(double dt) {
    super.update(dt);
    artboard.advance(dt);
    if (!gameRef.joystick.delta.isZero()) {
      position.add(gameRef.joystick.relativeDelta * speed * dt);
      // angle = gameRef.joystick.delta.screenAngle();
      if(gameRef.joystick.relativeDelta.x>=0 ){
        if(gameRef.joystick.relativeDelta.x.abs()>gameRef.joystick.relativeDelta.y.abs()){
          move();
        }else{
          gameRef.joystick.relativeDelta.y>0?  down() : up();
        }
      }else if(gameRef.joystick.relativeDelta.x<0 ){
        if(gameRef.joystick.relativeDelta.x.abs()>gameRef.joystick.relativeDelta.y.abs()){
          backMove();
        }else{
          gameRef.joystick.relativeDelta.y>0?  down() : up();
        }
      }
    }else{
      //键盘
      position.add(velocity * (speed * dt));
    }
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    riveCanvas.draw(canvas, size.toSize());
  }

  @override
  void onRemove() {
    super.onRemove();
    stopFireAnimation();
  }

  @override
  bool onKeyEvent(RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    final isKeyDown = event is RawKeyDownEvent;
    if (event.logicalKey == LogicalKeyboardKey.keyA) {
      velocity.x = isKeyDown ? -1 : 0;
      isKeyDown ? backMove() : backIdle() ;
      return false;
    } else if (event.logicalKey == LogicalKeyboardKey.keyD) {
      velocity.x = isKeyDown ? 1 : 0;
      isKeyDown ? move() : idle() ;
      return false;
    } else if (event.logicalKey == LogicalKeyboardKey.keyW) {
      velocity.y = isKeyDown ? -1 : 0;
      isKeyDown ? up() : upIdle() ;
      return false;
    } else if (event.logicalKey == LogicalKeyboardKey.keyS) {
      velocity.y = isKeyDown ? 1 : 0;
      isKeyDown ? down() : downIdle() ;
      return false;
    } else if (event.logicalKey == LogicalKeyboardKey.space) {
      isKeyDown ? startFireAnimation() : stopFireAnimation() ;
      return false;
      }
    return super.onKeyEvent(event, keysPressed);
  }

  void idle() {
    angle = 0;
    scale = Vector2(1,1);
    stopRunAnimation();
  }
  void backIdle() {
    angle = 0;
    scale = Vector2(-1,1);
    stopRunAnimation();
  }
  void upIdle() {
    angle = -0.5 * pi;
    scale = Vector2(1,1);
    stopRunAnimation();
  }
  void downIdle() {
    angle = 0.5 * pi;
    scale = Vector2(1,1);
    stopRunAnimation();
  }
  void move() {
    angle = 0;
    scale = Vector2(1,1);
    startRunAnimation();
  }
  void backMove() {
    angle = 0;
    scale = Vector2(-1,1);
    startRunAnimation();
  }
  void up() {
    angle = -0.5 * pi;
    scale = Vector2(1,1);
    startRunAnimation();
  }
  void down() {
    angle = 0.5 * pi;
    scale = Vector2(1,1);
    startRunAnimation();
  }
}




import 'package:flame/effects.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f03_tile_level_1.dart';

import 'f02_components/f01_minotaur.dart';



class MyGame extends FlameGame with KeyboardEvents,FPSCounter,TapDetector  {


  static final fpsTextPaint = TextPaint(
    config: const TextPaintConfig(color: Color(0xFFFFFFFF)),
  );
  static const int speed = 200;
  final Vector2 velocity = Vector2(0, 0);
  final minotaur = Minotaur(Vector2(0, 0));
  final tileLevel1 = TileLevel1();
  @override
  bool debugMode = true;

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    // minotaur.add(
    //   OpacityEffect(
    //     opacity: 0,
    //     duration: 0.5,
    //     isInfinite: true,
    //     isAlternating: true,
    //   ),
    // );
    add(tileLevel1);
    add(minotaur);

  }
  @override
  void render(Canvas canvas) {
    super.render(canvas);
    if (debugMode) {
      fpsTextPaint.render(canvas, fps(120).toString(), Vector2(0, 0));
    }
  }
  @override
  void update(double dt) {
    super.update(dt);
    final displacement = velocity * (speed * dt);
    minotaur.x = minotaur.x + displacement.x;
    minotaur.y = minotaur.y +  displacement.y;
  }
  @override
  void onTap() {
    final opacity = minotaur.paint.color.opacity;
    if (opacity == 1) {
      minotaur.add(OpacityEffect.fadeOut());
    } else if (opacity == 0) {
      minotaur.add(OpacityEffect.fadeIn());
    }
  }
  @override
  KeyEventResult onKeyEvent(RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed,) {
    final isKeyDown = event is RawKeyDownEvent;

    if (event.logicalKey == LogicalKeyboardKey.keyA) {
      velocity.x = isKeyDown ? -1 : 0;
      minotaur.state = MinotaurState.BackMove;
    } else if (event.logicalKey == LogicalKeyboardKey.keyD) {
      velocity.x = isKeyDown ? 1 : 0;
      minotaur.state = MinotaurState.Move;
    } else if (event.logicalKey == LogicalKeyboardKey.keyW) {
      velocity.y = isKeyDown ? -1 : 0;
    } else if (event.logicalKey == LogicalKeyboardKey.keyS) {
      velocity.y = isKeyDown ? 1 : 0;
    }

    return super.onKeyEvent(event, keysPressed);
  }



//
//
//   void render(Canvas c) {
//     //c.translate(x, y);
//     //c.scale(scale,scale);
//     map01.render(c);
//     controller.render(c);
//     minotaur.render(c);
//   }
//   void onTapDown(TapDownDetails details) {
//     print(details);
//     controller.onTapDown(details);
// //    x += 11;
// //    y += 1;
//   }
//   void onLongPressStart(LongPressStartDetails details){
//     print(details);
//   }
//   void onLongPressEnd(LongPressEndDetails details){
//     print(details);
//   }
//   void onLongPressUp(){
//     print(x);
//   }
//   void onLongPress(){
//     print(x);
//   }
//   void onPanDown(DragDownDetails details){
//     print(details);
//     controller.onPanDown(details);
//   }
//   void onPanUpdate(DragUpdateDetails details){
//     controller.onPanUpdate(details);
// //    if(controller.)
// //    print(details);
// //    x += details.delta.dx;
// //    y += details.delta.dy;
//   }
//   void onPanEnd(DragEndDetails details){
//     print(details);
//     controller.onPanEnd(details);
// //    x=0;
// //    y=0;
//   }
//   void onScaleStart(ScaleStartDetails details){
//     print(details);
//   }
//   void onScaleUpdate(ScaleUpdateDetails details){
//     print(details);
//     scale += details.scale;
//   }
//   void onScaleEnd(ScaleEndDetails details){
//     print(details);
//   }
//   void update(double t) {
//     minotaur.update(t);
//     controller.update(t);
//   }
//
//   void resize(Size size) {
//     screenSize = size;
//     super.resize(size);
//   }

}
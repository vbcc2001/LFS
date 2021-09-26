
import 'package:flame/effects.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f01_minotaur.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f02_components/f03_tile_level_1.dart';



class MyGame extends FlameGame with KeyboardEvents,FPSCounter,TapDetector  {



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
    // if (debugMode) {
    //   fpsTextPaint.render(canvas, fps(120).toString(), Vector2(0, 0));
    // }
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

}
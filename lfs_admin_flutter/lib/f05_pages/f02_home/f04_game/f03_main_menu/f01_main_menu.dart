
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/cupertino.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f03_main_menu/f02_logo.dart';
import 'f04_button.dart';

class MainMenu extends FlameGame with HasTappableComponents,MouseMovementDetector  {

  late LogoSprite logoSprite ;
  late ButtonComponent buttonSprite;

  Vector2? target;
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    logoSprite = LogoSprite()..anchor=Anchor.center..position =Vector2(this.size.x/2, this.size.y/2);
    buttonSprite = ButtonComponent()..anchor=Anchor.center..position=Vector2(this.size.x/2, this.size.y/2+100);
    add(logoSprite);
    add(buttonSprite);
  }
  @override
  void onMouseMove(PointerHoverInfo info) {
    target = info.eventPosition.game;
    //
  }
  @override
  void update(double dt) {

    final target = this.target;
    super.update(dt);
    if (target != null) {
      if (buttonSprite.toRect().contains(target.toOffset())){
        buttonSprite.current = ButtonState.selected;
        mouseCursor.value = SystemMouseCursors.grab;
      }else{
        buttonSprite.current = ButtonState.normal;
      }
    }
  }
  static final mouseTextPaint = TextPaint(
    config: const TextPaintConfig(color: Color(0xFFFFFFFF)),
  );
  @override
  void render(Canvas canvas) {
    super.render(canvas);
    if (debugMode) {
      if (target != null) {
        mouseTextPaint.render(
            canvas, target!.x.toString() + "." + target!.y.toString(),
            Vector2(100, 100));
      }
    }
  }
}
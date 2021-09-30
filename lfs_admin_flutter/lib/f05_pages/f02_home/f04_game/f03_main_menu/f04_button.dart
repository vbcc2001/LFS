import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame/palette.dart';

enum ButtonState { normal, selected, pressed }
class ButtonComponent extends SpriteGroupComponent<ButtonState> with Tappable,Hoverable {

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    this.size = Vector2(200, 50);
    Image buttonHighLight = await Flame.images.load('flare/button/buttonHighLight.png');
    Image buttonNormal = await Flame.images.load('flare/button/buttonNormal.png');
    Image buttonPressed = await Flame.images.load('flare/button/buttonPressed.png');
    final selectedSprite =  Sprite(buttonHighLight);
    final normalSprite =  Sprite(buttonNormal);
    final pressedSprite =  Sprite(buttonPressed);
    sprites = {
      ButtonState.pressed: pressedSprite,
      ButtonState.selected: selectedSprite,
      ButtonState.normal: normalSprite,
    };
    current = ButtonState.normal;
    final text = TextComponent('开始游戏',
        textRenderer: TextPaint(config: TextPaintConfig(color: BasicPalette.white.color).withFontSize(22.0)),
    );
    add(text..anchor = Anchor.center..position.setFrom(size/2));
  }
  @override
  void render(Canvas canvas) {
    super.render(canvas);
    // mouseCursor.value = isHovered? SystemMouseCursors.grab :SystemMouseCursors.basic;
    if (current != ButtonState.pressed) {
      if (isHovered) {
        current = ButtonState.selected;
      } else {
        current = ButtonState.normal;
      }
    }
  }

  @override
  bool onTapDown(_) {
    current = ButtonState.pressed;
    return true;
  }

  @override
  bool onTapUp(_) {
    current = ButtonState.normal;
    return true;
  }

  @override
  bool onTapCancel() {
    current = ButtonState.normal;
    return true;
  }
}

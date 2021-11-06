import 'dart:ui';

import 'package:flame/assets.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/palette.dart';

enum ButtonState { normal, selected, pressed }
class ButtonComponent extends SpriteGroupComponent<ButtonState> with Tappable,Hoverable {

  final Function event;
  ButtonComponent(this.event);
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    size = Vector2(200, 50);
    var images = Images(prefix:'');
    // Image image = await images.load('assets/images/f07_logo.png');
    Image buttonHighLight = await images.load('assets/images/f08_button_high_light.png');
    Image buttonNormal = await images.load('assets/images/f09_button_normal.png');
    Image buttonPressed = await images.load('assets/images/f10_button_pressed.png');
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
    event();
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

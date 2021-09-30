import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'f02_logo.dart';
import 'f04_button.dart';

class MainMenu extends PositionComponent with HasGameRef {

  late LogoSprite logoSprite ;
  late ButtonComponent buttonSprite;

  MainMenu() : super(
    size: Vector2(400, 400),
  );

  Vector2? target;
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    logoSprite = LogoSprite()..anchor=Anchor.center..position =Vector2(this.size.x/2, this.size.y/2);
    buttonSprite = ButtonComponent()..anchor=Anchor.center..position=Vector2(this.size.x/2, this.size.y/2+100);
    add(logoSprite);
    add(buttonSprite);
  }
}
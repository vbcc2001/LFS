import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import '../game.dart';
import 'f02_logo.dart';
import 'f04_button.dart';


class MainMenu extends PositionComponent with HasGameRef<MyGame> {

  MainMenu() : super(
    size: Vector2(400, 400),
  );

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    add(LogoSprite()..anchor=Anchor.center..position =Vector2(this.size.x/2, this.size.y/2-100));
    add(ButtonComponent(gameRef.start)..anchor=Anchor.center..position=Vector2(this.size.x/2, this.size.y/2));
    add(ButtonComponent(gameRef.end)..anchor=Anchor.center..position=Vector2(this.size.x/2, this.size.y/2+100));
  }
}
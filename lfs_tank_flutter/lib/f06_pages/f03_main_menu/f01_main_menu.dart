import 'package:flame/components.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:lfs_tank_flutter/f06_pages/f01_game/view.dart';
import '../../game.dart';
import 'f02_logo.dart';
import 'f04_button.dart';


class MainMenu extends PositionComponent with HasGameRef<MyGame> {

  MainMenu() : super(
    size: Vector2(400, 400),
  );

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    add(LogoSprite()..anchor=Anchor.center..position =Vector2(size.x/2, size.y/2-100));
    add(ButtonComponent(()=> Get.offAll(() => GamePage()))..anchor=Anchor.center..position=Vector2(size.x/2, size.y/2));
    add(ButtonComponent(()=> Get.offAll(() => GamePage()))..anchor=Anchor.center..position=Vector2(size.x/2, size.y/2+100));
  }
}
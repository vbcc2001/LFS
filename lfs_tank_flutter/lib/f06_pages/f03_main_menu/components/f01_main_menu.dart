import 'package:flame/components.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:lfs_tank_flutter/f01_utils/f06_audio.dart';
import 'package:lfs_tank_flutter/f06_pages/f00_splash/view.dart';
import '../view.dart';
import 'package:lfs_tank_flutter/f06_pages/f04_scene_01/view.dart';
import '../../f04_scene_01/game.dart';
import 'f02_logo.dart';
import 'f04_button.dart';


class MainMenu extends PositionComponent with HasGameRef<MyGame> {

  MainMenu() : super( size: Vector2(400, 400), );

  late ButtonComponent musicButton;
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    add(LogoSprite()..anchor=Anchor.center..position =Vector2(size.x/2, size.y/2-100));
    add(ButtonComponent("开始游戏",startGame)..anchor=Anchor.center..position=Vector2(size.x/2, size.y/2));
    add(ButtonComponent("制作鸣谢",thanks)..anchor=Anchor.center..position=Vector2(size.x/2, size.y/2+100));
    musicButton = ButtonComponent("开启音乐",playBgmMusic)..anchor=Anchor.center..position=Vector2(size.x/2, size.y/2+200);
    add(musicButton);
  }

  void startGame() {
    Get.offAll(() => GameScene01());
    MyAudio.instance.stopBgmMusic();
  }
  void thanks() {
    Get.offAll(() => SplashPage());
  }
  void playBgmMusic() {
    MyAudio.instance.bgmIsPlaying ?  MyAudio.instance.stopBgmMusic(): MyAudio.instance.startBgmMusic();
    musicButton.text == "开启音乐" ? musicButton.text = "关闭音乐" : musicButton.text = "开启音乐" ;
  }
}
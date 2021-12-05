import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:flame/parallax.dart';
import 'package:lfs_tank_flutter/f01_utils/f03_game.dart';
import 'package:lfs_tank_flutter/f01_utils/f06_audio.dart';
import 'components/f01_main_menu.dart';


class MainGame extends CustomBaseGame with HasTappableComponents,MouseMovementDetector,HasHoverableComponents  {

  @override
  bool showFPS = true;
  final _imageNames = [
    // ParallaxImageData('assets/images/f06_fire_temple.png'),
    ParallaxImageData('f06_fire_temple.png'),
  ];
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    //背景
    Parallax parallax = await Parallax.load(
      _imageNames,
      baseVelocity: Vector2(20, 0),
      velocityMultiplierDelta: Vector2(1.8, 1.0),
    );
    ParallaxComponent background = ParallaxComponent.fromParallax(parallax);
    add(background);

    //目录
    MainMenu mainMenu = MainMenu()..anchor=Anchor.center..position =Vector2(size.x/2, size.y/2);
    await add(mainMenu);
    //音乐
    //AudioPool pool = await AudioPool.create('fire_2.mp3', minPlayers: 3, maxPlayers: 4);
    await MyAudio.instance.init();
    MyAudio.instance.startBgmMusic();
  }
}


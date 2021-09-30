
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame/parallax.dart';
import 'package:flame/src/components/parallax_component.dart';
import 'package:flame_audio/audio_pool.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/cupertino.dart';
import 'f02_components/f03_fps.dart';
import 'f02_components/f04_background.dart';
import 'f02_components/f05_audio.dart';
import 'f03_main_menu/f01_main_menu.dart';



class MyGame extends FlameGame with FPSCounter, HasTappableComponents,MouseMovementDetector,HasHoverableComponents  {
  @override
  bool debugMode = true;
  final fpsTextBox = FpsTextBox();
  late final mainMenu;
  late AudioPool pool;
  final myAudio = MyAudio();
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    //背景
    await add(Background());
    //游戏帧数
    await add(fpsTextBox);
    //目录
    mainMenu = MainMenu()..anchor=Anchor.center..position =Vector2(this.size.x/2, this.size.y/2);
    await add(mainMenu);
    //音乐
    // pool = await AudioPool.create('fire_2.mp3', minPlayers: 3, maxPlayers: 4);
    myAudio.startBgmMusic();
  }
  @override
  void render(Canvas canvas) {
    super.render(canvas);
    if (debugMode) {
      fpsTextBox.show(canvas, fps(120).toString());
    }
  }
}


import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame_audio/audio_pool.dart';
import '../f02_components/f03_fps.dart';
import '../f02_components/f04_background.dart';
import '../f02_components/f05_audio.dart';
import '../f03_main_menu/f01_main_menu.dart';
import '../f05_maze/maze.dart';

class MenuGame extends FlameGame with HasKeyboardHandlerComponents,FPSCounter, HasTappableComponents,MouseMovementDetector,HasHoverableComponents  {
  @override
  bool debugMode = true;
  final fpsTextBox = FpsTextBox();
  late final mainMenu;
  late final background;
  late AudioPool pool;
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    //背景
    background = Background();
    await add(background);
    //游戏帧数
    await add(fpsTextBox);
    //目录
    mainMenu = MainMenu()..anchor=Anchor.center..position =Vector2(this.size.x/2, this.size.y/2);
    await add(mainMenu);
    //音乐
    // pool = await AudioPool.create('fire_2.mp3', minPlayers: 3, maxPlayers: 4);
    await MyAudio.instance.init();
    MyAudio.instance.startBgmMusic();
  }
  @override
  void render(Canvas canvas) {
    super.render(canvas);
    if (debugMode) {
      fpsTextBox.show(canvas, fps(120).toString());
    }

  }
  void start() async{
      this.remove(mainMenu);
      this.remove(fpsTextBox);
      this.remove(background);
      await this.add(Maze());
      // await this.add(Scene01());
  }
  void end() {
    //end
  }
}


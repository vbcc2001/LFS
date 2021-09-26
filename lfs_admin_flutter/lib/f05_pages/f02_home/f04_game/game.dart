
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
import 'f03_main_menu/f01_main_menu.dart';



class MyGame extends FlameGame with FPSCounter, HasTappableComponents,MouseMovementDetector  {

  @override
  bool debugMode = true;
  final fpsTextBox = FpsTextBox();
  final mainMenu = MainMenu();
  late AudioPool pool;
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    // pool = await AudioPool.create('fire_2.mp3', minPlayers: 3, maxPlayers: 4);
    startBgmMusic();
    final _imageNames = [
      ParallaxImageData('flare/fire_temple.png'),
    ];
    final parallax = await loadParallaxComponent(
      _imageNames,
      baseVelocity: Vector2(20, 0),
      velocityMultiplierDelta: Vector2(1.8, 1.0),
    );
    await add(parallax);
    await add(mainMenu);
    await add(fpsTextBox);
  }
  @override
  void render(Canvas canvas) {
    super.render(canvas);
    if (debugMode) {
      fpsTextBox.renderer.render(canvas, fps(120).toString(), Vector2(0, 0));
    }
  }

  void startBgmMusic() {
    FlameAudio.bgm.initialize();
    FlameAudio.bgm.play('music/when_snow_become_ashes.ogg');
  }
}


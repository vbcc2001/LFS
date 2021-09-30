


import 'package:flame_audio/flame_audio.dart';

class MyAudio {

  void startBgmMusic() {
    FlameAudio.bgm.initialize();
    FlameAudio.bgm.play('music/when_snow_become_ashes.ogg');
  }

}

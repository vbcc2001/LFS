


import 'package:flame_audio/flame_audio.dart';

class MyAudio {
  // late Settings settings;
  MyAudio._internal();

  /// [_instance] represents the single static instance of [AudioManager].
  static MyAudio _instance = MyAudio._internal();

  /// A getter to access the single instance of [AudioManager].
  static MyAudio get instance => _instance;

  /// This method is responsible for initializing caching given list of [files],
  /// and initilizing settings.
  // Future<void> init(List<String> files, Settings settings) async {
  //   this.settings = settings;
  //   FlameAudio.bgm.initialize();
  //   await FlameAudio.audioCache.loadAll(files);
  // }
  Future<void> init() async {
    FlameAudio.bgm.initialize();
  }

  void startBgmMusic() {
    FlameAudio.bgm.play('music/when_snow_become_ashes.ogg');
  }
  // Plays the given audio file once.
  void playSfx(String fileName) {
      FlameAudio.audioCache.play(fileName);
  }

  // // Starts the given audio file as BGM on loop.
  // void startBgm(String fileName) {
  //   if (settings.bgm) {
  //     FlameAudio.bgm.play(fileName, volume: 0.4);
  //   }
  // }
  //
  // // Pauses currently playing BGM if any.
  // void pauseBgm() {
  //   if (settings.bgm) {
  //     FlameAudio.bgm.pause();
  //   }
  // }
  //
  // // Resumes currently paused BGM if any.
  // void resumeBgm() {
  //   if (settings.bgm) {
  //     FlameAudio.bgm.resume();
  //   }
  // }
  //
  // // Stops currently playing BGM if any.
  // void stopBgm() {
  //   FlameAudio.bgm.stop();
  // }
  //
  // // Plays the given audio file once.
  // void playSfx(String fileName) {
  //   if (settings.sfx) {
  //     FlameAudio.audioCache.play(fileName);
  //   }
  // }

}
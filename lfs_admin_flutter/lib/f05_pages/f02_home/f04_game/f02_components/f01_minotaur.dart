import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import '../f04_scene_01/game.dart';

import '../game.dart';
import 'f05_audio.dart';
class MinotaurGroup extends SpriteAnimationGroupComponent<MinotaurState> with HasGameRef<Scene01> {

  static final spriteSize = Vector2(96, 96);
  static final _animationMap = {
    MinotaurState.Idle: SpriteAnimationData.sequenced(
      amount: 5,
      stepTime: 0.1,
      textureSize: spriteSize,
    ),
    MinotaurState.Move: SpriteAnimationData.sequenced(
      amount: 8,
      stepTime: 0.1,
      textureSize: spriteSize,
      texturePosition: Vector2(0,spriteSize.y*1),
    ),
    MinotaurState.BackIdle: SpriteAnimationData.sequenced(
      amount: 5,
      stepTime: 0.1,
      textureSize: spriteSize,
      texturePosition: Vector2(0,spriteSize.y*10),
    ),
    MinotaurState.BackMove: SpriteAnimationData.sequenced(
      amount: 8,
      stepTime: 0.1,
      textureSize: spriteSize,
      texturePosition: Vector2(0,spriteSize.y*11),
    ),
  };
  final Map<String,String> playerData;

  double jumpY = 0.0;
  MinotaurGroup(Image image, this.playerData) : super.fromFrameData(image, _animationMap);

  @override
  void onMount() {
    super.onMount();
    this.size = Vector2.all(96);
    this.current = MinotaurState.Idle;
    // this.shouldRemove = false;
    // this.shouldRemove = true;
    this.anchor = Anchor.center;
  }
  void jump() {
      this.jumpY = -300;
      this.current = MinotaurState.Move;
      MyAudio.instance.playSfx('jump14.wav');
  }
  void idle() {
    this.current = MinotaurState.Idle;
  }
  void backIdle() {
    this.current = MinotaurState.BackIdle;
  }
  void move() {
    this.current = MinotaurState.Move;
  }
  void backMove() {
    this.current = MinotaurState.BackMove;
  }
}

enum MinotaurState {
  Idle,
  BackIdle,
  Move,
  Taunt,
  Attack1,
  Attack2,
  Attack3,
  Attack4,
  Damage1,
  Damage2,
  Death,
  BackMove,
}
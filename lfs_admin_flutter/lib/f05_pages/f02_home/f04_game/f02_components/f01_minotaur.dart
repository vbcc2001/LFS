import 'dart:html';
import 'dart:ui';

import 'package:flame/assets.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
class Minotaur extends SpriteAnimationComponent {

  final spriteSize = Vector2(96, 96);
  late var state = MinotaurState.Idle;
  late final spriteSheet;
  late final animationIdle;
  late final animationMove;
  late final animationBackMove;

  Minotaur(Vector2 position) :super(position:position);

  Future<void> onLoad() async {
    spriteSheet = SpriteSheet(
      image: await Images(prefix:"").load('images/game/minotaur.png'),
      srcSize: Vector2(96.0, 96.0),
    );
    animationIdle = spriteSheet.createAnimation(row: 0, stepTime: 0.1, to: 5);
    animationMove = spriteSheet.createAnimation(row: 1, stepTime: 0.1, to: 8);
    animationBackMove = spriteSheet.createAnimation(row: 11, stepTime: 0.1, to: 8);
    this.animation = animationIdle;
    this.size = spriteSize;
  }

  @override
  void onGameResize(Vector2 gameSize) {
    // We don't need to set the position in the constructor, we can it directly here since it will
    // be called once before the first time it is rendered.
    position = gameSize / 2;
  }

  void update(double t) {
    super.update(t);
    switch(state){
      case MinotaurState.Idle:
        this.animation =  animationIdle;
        break;
      case MinotaurState.Move:
        this.animation =  animationMove;
        break;
      case MinotaurState.Taunt:
        // TODO: Handle this case.
        break;
      case MinotaurState.Attack1:
        // TODO: Handle this case.
        break;
      case MinotaurState.Attack2:
        // TODO: Handle this case.
        break;
      case MinotaurState.Attack3:
        // TODO: Handle this case.
        break;
      case MinotaurState.Attack4:
        // TODO: Handle this case.
        break;
      case MinotaurState.Damage1:
        // TODO: Handle this case.
        break;
      case MinotaurState.Damage2:
        // TODO: Handle this case.
        break;
      case MinotaurState.Death:
        // TODO: Handle this case.
        break;
      case MinotaurState.BackMove:
        this.animation =  animationBackMove;
        break;
    }
  }
}
enum MinotaurState {
  Idle,
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
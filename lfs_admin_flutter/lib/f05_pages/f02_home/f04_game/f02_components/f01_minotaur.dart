import 'dart:html';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

class Minotaur extends SpriteComponent {


  Minotaur() : super(size: Vector2.all(96));




  Future<void> onLoad() async {
    sprite = await Sprite.load('crate.png');
    anchor = Anchor.center;



  }

  @override
  void onGameResize(Vector2 gameSize) {
    // We don't need to set the position in the constructor, we can it directly here since it will
    // be called once before the first time it is rendered.
    position = gameSize / 2;
  }




//   final MyGame game;
//   State state;
//   Offset position;
//   final Animation  animationIdle = Animation.sequenced('minotaur.png', 5,
//       textureX:0, textureY:0 , textureWidth: 96, textureHeight: 96);
//   final Animation  animationMove = Animation.sequenced('minotaur.png', 8,
//       textureX:0, textureY:96 , textureWidth: 96, textureHeight: 96);
//   final Animation  animationBackMove = Animation.sequenced('minotaur.png', 8,
//       textureX:0, textureY:1056 , textureWidth: 96, textureHeight: 96);
//   AnimationComponent animationComponent ;
//   AnimationComponent reversedAnimationComponent;
//   Rect rect;
//   int x,y;
//   Minotaur(this.game,this.position){
//     state = State.Idle;
//     animationComponent = AnimationComponent(96, 96, animationIdle);
//     print(position);
//     animationComponent.x = position.dx;
//     animationComponent.y = position.dy;
//
// //    reversedAnimationComponent =
// //    AnimationComponent(100, 100, animation.reversed());
// //    reversedAnimationComponent.x = game.screenSize.width / 2-100;
// //    reversedAnimationComponent.y = 100;
// //    rect = Rect.fromLTWH(left, top, 96, 96);
//   }
//   void onTapDown() {
//
//   }
//
//   void render(Canvas c) {
//     //animationComponent.setByRect(rect);
//
//     animationComponent.render(c);
// //    reversedAnimationComponent.render(c);
//   }
//
//   void update(double t) {
//     switch(state){
//       case State.Idle:
//         animationComponent.animation =  animationIdle;
//         break;
//       case State.Move:
//         animationComponent.animation =  animationMove;
//         break;
//       case State.Taunt:
//         // TODO: Handle this case.
//         break;
//       case State.Attack1:
//         // TODO: Handle this case.
//         break;
//       case State.Attack2:
//         // TODO: Handle this case.
//         break;
//       case State.Attack3:
//         // TODO: Handle this case.
//         break;
//       case State.Attack4:
//         // TODO: Handle this case.
//         break;
//       case State.Damage1:
//         // TODO: Handle this case.
//         break;
//       case State.Damage2:
//         // TODO: Handle this case.
//         break;
//       case State.Death:
//         // TODO: Handle this case.
//         break;
//       case State.BackMove:
//         animationComponent.animation =  animationBackMove;
//         break;
//     }
//     animationComponent.update(t);
//   }
}
enum State {
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
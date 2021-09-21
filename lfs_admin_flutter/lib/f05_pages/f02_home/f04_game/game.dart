import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';

import 'f01_maps/f01_map.dart';
import 'f02_components/f01_minotaur.dart';
import 'f02_components/f02_controller_button.dart';
// import 'package:flame/components/tiled_component.dart';
// import 'package:flame/flame.dart';
// import 'package:flame/game.dart';
// import 'package:flutter/gestures.dart';
//
// import 'component/f01_minotaur.dart';
// import 'component/f02_controller_button.dart';
// import 'map/f01_map.dart';



class MyGame extends FlameGame {
  // Size screenSize;
  // Map01 map01;
  // Minotaur minotaur;
  // Controller controller;
  // double x=0,y=0;
  // double scale = 1.0;
  // Controller controller = Controller(this);
  // MyGame(){
  //   init();
  // }
  //
  // void init() async {
  //
  //   // resize(await Flame.util.initialDimensions());
  //   // map01 = Map01();
  //   // print(screenSize);
  //   // minotaur = Minotaur(this, screenSize.center(Offset(-96/2, -96/2)));
  //   // controller = Controller(this);
  // }

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    //add(Minotaur());

    // Image image = await Flame.images.load('player.png');
    //
    // final playerSprite = Sprite(image);

    final animation = await loadSpriteAnimation(
      'game/minotaur.png',
      SpriteAnimationData.sequenced(
        amount: 5,
        textureSize: Vector2.all(96),
        stepTime: 0.15,
      ),
    );
    final spriteSize = Vector2.all(100.0);
    final animationComponent2 = SpriteAnimationComponent(
      animation: animation,
      size: spriteSize,
    );
    animationComponent2.x = size.x / 2 - spriteSize.x;
    animationComponent2.y = spriteSize.y;
    add(animationComponent2);



  }


//
//
//   void render(Canvas c) {
//     //c.translate(x, y);
//     //c.scale(scale,scale);
//     map01.render(c);
//     controller.render(c);
//     minotaur.render(c);
//   }
//   void onTapDown(TapDownDetails details) {
//     print(details);
//     controller.onTapDown(details);
// //    x += 11;
// //    y += 1;
//   }
//   void onLongPressStart(LongPressStartDetails details){
//     print(details);
//   }
//   void onLongPressEnd(LongPressEndDetails details){
//     print(details);
//   }
//   void onLongPressUp(){
//     print(x);
//   }
//   void onLongPress(){
//     print(x);
//   }
//   void onPanDown(DragDownDetails details){
//     print(details);
//     controller.onPanDown(details);
//   }
//   void onPanUpdate(DragUpdateDetails details){
//     controller.onPanUpdate(details);
// //    if(controller.)
// //    print(details);
// //    x += details.delta.dx;
// //    y += details.delta.dy;
//   }
//   void onPanEnd(DragEndDetails details){
//     print(details);
//     controller.onPanEnd(details);
// //    x=0;
// //    y=0;
//   }
//   void onScaleStart(ScaleStartDetails details){
//     print(details);
//   }
//   void onScaleUpdate(ScaleUpdateDetails details){
//     print(details);
//     scale += details.scale;
//   }
//   void onScaleEnd(ScaleEndDetails details){
//     print(details);
//   }
//   void update(double t) {
//     minotaur.update(t);
//     controller.update(t);
//   }
//
//   void resize(Size size) {
//     screenSize = size;
//     super.resize(size);
//   }

}
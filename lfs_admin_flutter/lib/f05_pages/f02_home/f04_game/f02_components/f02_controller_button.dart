import 'dart:ui';

import 'package:flutter/gestures.dart';

import '../f04_scene_01/f03_game.dart';
import 'f01_minotaur.dart';


class Controller {
  // final MyGame game;
  // Offset offset;
  // Paint paint;
  // double radius = 64;
  // double margin = 20;
  // double ox = 0;
  // double oy = 0;
  // double x = 0;
  // double y = 0;
  // double count = 0;
  // Controller(this.game){
  //   ox = (radius+margin+game.x);
  //   oy = (game.screenSize.height-margin-radius+game.y);
  //
  //   offset = Offset(ox,oy);
  //   print(offset);
  //   paint = Paint()..color = Color(0x44000000);
  // }
  //
  // void onTapDown(TapDownDetails details) {
  //   print(details);
  // }
  // void onPanDown(DragDownDetails details){
  //   print(details);
  //   game.minotaur.state = State.Move;
  //   //offset = details.globalPosition;
  // }
  // void onPanEnd(DragEndDetails details){
  //   game.minotaur.state = State.Idle;
  //   offset = Offset(ox-game.x,oy-game.y);
  //   x = 0;
  //   y = 0;
  // }
  // void onPanUpdate(DragUpdateDetails details){
  //   if(details.delta.dx>0 && game.minotaur.state!=State.Move){
  //     game.minotaur.state = State.Move;
  //   }
  //   if(details.delta.dx<0 && game.minotaur.state!=State.BackMove){
  //     game.minotaur.state = State.BackMove;
  //   }
  //   print(details);
  //   offset = Offset(ox-game.x,oy-game.y);
  //   x += details.delta.dx;
  //   y += details.delta.dy;
  //   if(x<-30)x=-30;
  //   if(y<-30)y=-30;
  //   if(x>30)x=30;
  //   if(y>30)y=30;
  //   while(x*x+y*y>900){
  //     if(x<0)x +=0.1;
  //     if(x>=0)x -=0.1;
  //     if(y<0)y +=0.1;
  //     if(y>=0)y -=0.1;
  //   }
  // }
  // void render(Canvas c) {
  //   c.drawCircle(offset, radius , paint);
  //   c.drawCircle(offset.translate(x, y), radius-30 , paint);
  // }
  //
  // void update(double t) {
  //   count ++;
  //   double i = 2;
  //   if (count >=2) {
  //     if(x>1)game.map01.x -= i*count;
  //     if(y>1)game.map01.y -= i*count;
  //     if(x<-1)game.map01.x += i*count;
  //     if(y<-1)game.map01.y += i*count;
  //     count = 0;
  //   }
  // }
}
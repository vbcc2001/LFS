
import 'dart:ui';

// import 'package:flame/components/tiled_component.dart';
// import 'package:flutter/material.dart';
// import 'package:tiled/tiled.dart' hide Image;

// class Map01 extends TiledComponent{
//   Map01() : super("map.tmx");
//   double x=0,y=0;
//   static Paint paint = Paint()..color = Colors.black;
//   void render(Canvas c) {
//     if (!loaded()) {
//       return;
//     }
//
//     map.layers.forEach((layer) {
//       if (layer.visible) {
//         _renderLayer(c, layer);
//       }
//     });
//   }
//   void _renderLayer(Canvas c, Layer layer) {
//     if(x>0)x=0;
//     if(y>0)y=0;
//     layer.tiles.forEach((tile) {
//       if (tile.gid == 0) {
//         return;
//       }
//       final image = images[tile.image.source];
//       final rect = tile.computeDrawRect();
//       final src = Rect.fromLTWH(rect.left.toDouble(), rect.top.toDouble(),
//           rect.width.toDouble(), rect.height.toDouble());
//       final dst = Rect.fromLTWH(tile.x.toDouble()+x, tile.y.toDouble()+y,
//           rect.width.toDouble(), rect.height.toDouble());
//
//       c.drawImageRect(image, src, dst, paint);
//     });
//   }
// }
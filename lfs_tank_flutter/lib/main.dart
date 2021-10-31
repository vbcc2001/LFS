import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'game.dart';

void main() async {

  await Flame.device.fullScreen();
  await Flame.device.setLandscapeLeftOnly();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GameWidget(
        game: MyGame(context),
        mouseCursor:SystemMouseCursors.click
    );
  }
}





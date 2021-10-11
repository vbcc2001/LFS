import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../game.dart';

class BarLifeComponent extends SpriteComponent with HasGameRef<MyGame> {

  static const double widthBar = 90;
  static const double strokeWidth = 12;

  double maxLife = 100;
  double life = 0;
  double maxStamina = 100;
  double stamina = 0;
  @override
  bool get isHud => true;
  Paint maxLifePaint = Paint()..color = Colors.blueGrey[800]!..strokeWidth = strokeWidth..style = PaintingStyle.fill;
  Paint lifePaint = Paint()..color = Colors.green..strokeWidth = strokeWidth..style = PaintingStyle.fill;
  Paint staminaPaint = Paint()..color = Colors.yellow..strokeWidth = strokeWidth..style = PaintingStyle.fill;

  BarLifeComponent() : super(
    position: Vector2(20, 20),
    size: Vector2(120, 40),
  );


  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('health_ui.png');
    print(position);

  }

  @override
  void update(double t) {
    super.update(t);
    life = this.gameRef.player.life ;
    maxLife = this.gameRef.player.maxLife;
    maxStamina = this.gameRef.player.maxStamina;
    stamina = this.gameRef.player.stamina;
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    /********************** drawLife ************************/
    double xBar = position.x -20 + 26;
    double yBar = position.y -20 + 10;
    canvas.drawLine(Offset(xBar, yBar), Offset(xBar + widthBar, yBar), maxLifePaint);
    double currentBarLife = (life * widthBar) / maxLife;
    if ( currentBarLife > widthBar * 2 / 3 )  {
      lifePaint..color = Colors.green;
    } else if ( currentBarLife > widthBar / 3 ) {
      lifePaint..color = Colors.yellow;
    } else {
      lifePaint..color = Colors.red;
    }
    canvas.drawLine(Offset(xBar, yBar), Offset(xBar + currentBarLife, yBar), lifePaint);
    /********************** drawStamina ************************/
    double y2Bar = position.y -20 + 28;
    double currentBarStamina = (stamina * widthBar) / maxStamina;
    canvas.drawLine(Offset(xBar, y2Bar), Offset(xBar + currentBarStamina, y2Bar),staminaPaint);
  }
}

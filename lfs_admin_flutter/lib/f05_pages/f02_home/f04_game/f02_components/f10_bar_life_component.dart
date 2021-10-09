import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../f00_utils/f02_component/f09_interface_component.dart';

class BarLifeComponent extends InterfaceComponent {
  // double padding = 20;
  double widthBar = 90;
  double strokeWidth = 12;

  double maxLife = 0;
  double life = 0;
  double maxStamina = 100;
  double stamina = 0;

  BarLifeComponent(int id) : super(
    id: id,
    position: Vector2(20, 20),
    size: Vector2(120, 40),
    sprite: Sprite.load('health_ui.png'),
    spriteSelected: Sprite.load('health_ui.png'),
  );

  @override
  void update(double t) {
    life = this.gameRef.player.life ;
    maxLife = this.gameRef.player.maxLife;
    stamina = this.gameRef.player.stamina;
    super.update(t);
  }

  @override
  void render(Canvas c) {
    _drawLife(c);
    _drawStamina(c);
    super.render(c);
  }

  void _drawLife(Canvas canvas) {
    double xBar = position.x + 26;
    double yBar = position.y + 10;
    canvas.drawLine(
        Offset(xBar, yBar),
        Offset(xBar + widthBar, yBar),
        Paint()
          ..color = Colors.blueGrey[800]!
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.fill);

    double currentBarLife = (life * widthBar) / maxLife;

    canvas.drawLine(
        Offset(xBar, yBar),
        Offset(xBar + currentBarLife, yBar),
        Paint()
          ..color = _getColorLife(currentBarLife)
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.fill);
  }

  void _drawStamina(Canvas canvas) {
    double xBar = position.x + 26;
    double yBar = position.y + 28;

    double currentBarStamina = (stamina * widthBar) / maxStamina;

    canvas.drawLine(
        Offset(xBar, yBar),
        Offset(xBar + currentBarStamina, yBar),
        Paint()
          ..color = Colors.yellow
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.fill);
  }

  Color _getColorLife(double currentBarLife) {
    if (currentBarLife > widthBar - (widthBar / 3)) {
      return Colors.green;
    }
    if (currentBarLife > (widthBar / 3)) {
      return Colors.yellow;
    } else {
      return Colors.red;
    }
  }
}

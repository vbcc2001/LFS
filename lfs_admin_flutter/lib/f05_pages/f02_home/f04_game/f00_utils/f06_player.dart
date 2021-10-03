
import 'package:flame/components.dart';
import 'f02_component.dart';
import 'f07_attackable.dart';
import 'f09_movement.dart';

class Player extends MyComponent with Attackable, Movement{


  Player() {
    this.receivesAttackFrom = ReceivesAttackFromEnum.ENEMY;
    this.position = Vector2.all(0);
    this.size = Vector2.all(32);
  }
}
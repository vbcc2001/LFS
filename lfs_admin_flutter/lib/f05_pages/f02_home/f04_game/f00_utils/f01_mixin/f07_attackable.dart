
import 'package:flame/components.dart';

import '../f02_component/f02_component.dart';

enum ReceivesAttackFromEnum { ALL, ENEMY, PLAYER }
// enum AttackFromEnum { ENEMY, PLAYER }

/// Mixin responsible for adding damage-taking behavior to the component.
mixin Attackable on SpriteAnimationGroupComponent {
  /// Used to define which type of component can be damaged
  ReceivesAttackFromEnum receivesAttackFrom = ReceivesAttackFromEnum.ALL;
  double _life = 100;
  double _maxLife = 100;
  double attack = 20;
  double get maxLife => _maxLife;
  double get life => _life;
  set life(double life) => _life = life;
  void die() => _life=0;
  bool get isDead => _life<=0;
  ///初始化Life
  void initLife(double life) {
    _life = life;
    _maxLife = life;
  }
  /// 添加Life
  void addLife(double life) {
    _life = _life + life > maxLife ? maxLife : _life + life;
  }

  void damage(double damage) {
    _life -= damage;
  }

  bool receivesAttackFromPlayer() {
    return receivesAttackFrom == ReceivesAttackFromEnum.ALL || receivesAttackFrom == ReceivesAttackFromEnum.PLAYER;
  }

  bool receivesAttackFromEnemy() {
    return receivesAttackFrom == ReceivesAttackFromEnum.ALL || receivesAttackFrom == ReceivesAttackFromEnum.ENEMY;
  }
}

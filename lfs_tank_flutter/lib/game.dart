import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';

import 'f02_layers/f03_interface.dart';
import 'f03_components/f06_player_goblin.dart';

class MyGame extends FlameGame {
  /// 游戏上下文 Context
  final BuildContext context;
  /// 界面层
  final interface = InterfaceLayer();
  /// Game Player
  /// 游戏玩家角色
  late final PlayerGoblin player;
  MyGame(this.context);
}

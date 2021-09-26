import 'dart:ui';
import 'package:flame_tiled/tiled_component.dart';
class TileLevel1 extends TiledComponent {
  TileLevel1() : super(
      // 'map.tmx', Size(16.0, 16.0)
      // 'surface.tmx', Size(32.0, 32.0)
      'alpha_demo/ancient_temple.tmx', Size(64.0, 32.0)
  );
}
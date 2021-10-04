import 'dart:ui';

import 'package:flame/components.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f12_assets_loader.dart';

import 'map_paint.dart';


class ControlledUpdateAnimation {
  bool _alreadyUpdate = false;
  SpriteAnimation? animation;
  AssetsLoader? _loader;

  ControlledUpdateAnimation(Future<SpriteAnimation> animation) {
    _loader = AssetsLoader();
    _loader?.add(AssetToLoad(animation, (value) => this.animation = value));
  }

  ControlledUpdateAnimation.fromInstance(SpriteAnimation animation) {
    this.animation = animation;
  }

  void render(Canvas canvas, Vector2 position ,Vector2 size ) {
    if (animation != null) {
      animation?.getSprite().render(
            canvas,
            position:position,
            size: size,
            overridePaint: MapPaint.instance.paint,
          );
    }
    _alreadyUpdate = false;
  }

  void update(double dt) {
    if (!_alreadyUpdate) {
      _alreadyUpdate = true;
      animation?.update(dt);
    }
  }

  Future<void> onLoad() async {
    await _loader?.load();
  }
}

import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

mixin MyCamera on Camera {

  double _spacingMap = 32.0;

  Rect get cameraRect => Rect.fromCenter(
    center: this.position.toOffset(),
    width: (this.gameSize.x) * _zoomFactor(),
    height: (this.gameSize.y) * _zoomFactor(),
  );

  Rect get cameraRectWithSpacing => Rect.fromCenter(
    center: this.position.toOffset(),
    width: cameraRect.width + (_spacingMap * 2),
    height: cameraRect.height + (_spacingMap * 2),
  );

  double _zoomFactor() {
    if (this.zoom > 1) return 1;
    return 1 / this.zoom;
  }
}

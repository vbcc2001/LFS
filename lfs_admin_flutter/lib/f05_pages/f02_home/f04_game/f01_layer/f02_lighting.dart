
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_layer_priority.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_mixin/f11_lighting.dart';

import '../game.dart';

/// Layer component responsible for adding lighting to the game.
/// 灯光组件
class LightingLayer extends Component with HasGameRef<MyGame> {

  Color color;
  Iterable<Lighting> _visibleLight = [];
  double _dtUpdate = 0.0;

  LightingLayer({required this.color}) {
    this.isHud = true;
  }

  @override
  int get priority => LayerPriority.LightingPriority;

  @override
  void render(Canvas canvas) {
    Vector2 size = gameRef.size;
    canvas.saveLayer(Offset.zero & Size(size.x, size.y), Paint());
    canvas.drawColor(color, BlendMode.dstATop);
    _visibleLight.forEach((light) {
      light.update(_dtUpdate);
      canvas.save();
      canvas.translate(size.x / 2, size.y / 2);
      canvas.scale(gameRef.camera.zoom);
      canvas.translate( -(gameRef.camera.position.x), -(gameRef.camera.position.y));
      /// 绘制灯光效果
      double sigma = light.blurBorder * 0.57735 + 0.5;
      Paint _paintFocus = Paint()..blendMode = BlendMode.clear..maskFilter = MaskFilter.blur(BlurStyle.normal, sigma);
      Paint _paintLighting = Paint()..color = light.color..maskFilter = MaskFilter.blur(BlurStyle.normal, sigma);
      canvas.drawCircle(light.center.toOffset(), light.radius * (light.withPulse ? (1 - light.valuePulse * light.pulseVariation) : 1), _paintFocus );
      canvas.drawCircle(light.center.toOffset(), light.radius * (light.withPulse ? (1 - light.valuePulse * light.pulseVariation) : 1), _paintLighting);
      canvas.restore();
    });
    canvas.restore();
  }

  @override
  void update(double dt) {
    super.update(dt);
    _dtUpdate = dt;
    _visibleLight = gameRef.visibleLights;
  }
}

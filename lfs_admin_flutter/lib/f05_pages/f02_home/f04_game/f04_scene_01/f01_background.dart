
import 'package:flame/components.dart';
import 'package:flame/layers.dart';
import 'package:flame/parallax.dart';
import 'package:flame/src/components/parallax_component.dart';

class BackgroundLayer extends PreRenderedLayer {

  final Sprite sprite;

  BackgroundLayer(this.sprite) {
    preProcessors.add(ShadowProcessor());
  }

  @override
  void drawLayer() {
    sprite.render(
      canvas,
      position: Vector2(50, 200),
      size: Vector2(300, 150),
    );
  }



}
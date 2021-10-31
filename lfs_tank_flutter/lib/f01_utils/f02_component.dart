import 'package:flame/components.dart';
import '../../game.dart';
class MyComponent extends PositionComponent with HasGameRef<MyGame> {
  /// Param checks if this component is visible on the screen
  bool isVisible = false;
  /// Use to set opacity in render
  /// Range [0.0..1.0]
  double opacity = 1.0;
  MyComponent({ Vector2? position, Vector2? size, int? priority}) : super (
      position:position,size: size,priority:priority
  );
}


import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flame/src/components/parallax_component.dart';

class Background extends ParallaxComponent {




  final _imageNames = [
    ParallaxImageData('flare/fire_temple.png'),
  ];

  Background() :

        super(
  );

  @override
  Future<void> onLoad() async {
    this.parallax = await Parallax.load(
      _imageNames,
      baseVelocity: Vector2(20, 0),
      velocityMultiplierDelta: Vector2(1.8, 1.0),
    );
  }


}
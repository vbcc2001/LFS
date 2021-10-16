import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import '../../f00_utils/f01_layer_priority.dart';
import '../../game.dart';
class AnimationTile extends SpriteAnimationComponent with HasGameRef<MyGame> ,Hitbox,Collidable {

  final String spritePath;
  final SpriteAnimationData data;
  /// Param checks if this component is visible on the screen
  bool isVisible = false;
  bool isCollidable = false;
  late final String id;
  /// *************************************************** ----- *************************************************/
  /// *************************************************** 实例化 *************************************************/
  /// *************************************************** ----- *************************************************/
  AnimationTile( {required this.spritePath, required Vector2 position,required this.data,}) :super(position:position,size:Vector2.all(32),priority:LayerPriority.MAP){
    id = '$x/$y:${DateTime.now().microsecondsSinceEpoch}';
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();
    var image = await Flame.images.load(spritePath);
    this.animation = SpriteAnimation.fromFrameData(image, data) ;
  }
}

class SpriteTile extends SpriteComponent with HasGameRef<MyGame> ,Hitbox,Collidable {

  final String spritePath;
  final Map<String, dynamic>? properties;
  /// Param checks if this component is visible on the screen
  bool isVisible = false;
  bool isCollidable = false;
  late final String id;
  /// *************************************************** ----- *************************************************/
  /// *************************************************** 实例化 *************************************************/
  /// *************************************************** ----- *************************************************/
  SpriteTile( {required this.spritePath, required Vector2 position,this.properties,}) :super(position:position,size:Vector2.all(32),priority:LayerPriority.MAP){
    id = '$x/$y:${DateTime.now().microsecondsSinceEpoch}';
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();
    var image = await Flame.images.load(spritePath);
    this.sprite = Sprite(image);
  }

}
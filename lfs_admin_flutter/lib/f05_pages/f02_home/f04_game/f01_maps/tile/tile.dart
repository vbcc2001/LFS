import 'dart:math';
import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f01_layer_priority.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/collision/object_collision.dart';
import '../../f00_utils/f12_assets_loader.dart';
import '../../game.dart';
import '../controlled_update_animation.dart';
// class Tile extends SpriteComponent with HasGameRef<MyGame> ,Hitbox,Collidable {
class Tile extends SpriteComponent with HasGameRef<MyGame> ,Hitbox,Collidable {

  // CollidableType collidableType = CollidableType.active;
  //
  // void onCollision(Set<Vector2> intersectionPoints, Collidable other) {}
  // void onCollisionEnd(Collidable other) {}

  // @override
  // void onRemove() {
  //   super.onRemove();
  //   findParent<HasCollidables>()?.collidables.remove(this);
  // }

  int get priority => LayerPriority.MAP;

  ControlledUpdateAnimation? _animation;
  final double width;
  final double height;
  final String? type;
  late Vector2 _positionText;
  Paint? _paintText;
  AssetsLoader? _loader;
  final Map<String, dynamic>? properties;
  TextPaint? _textPaintConfig;
  String id = '';
  /// Param checks if this component is visible on the screen
  bool isVisible = false;
  bool collidable = false;
  Tile(
    String spritePath,
    Vector2 position, {
    this.width = 32,
    this.height = 32,
    this.type,
    this.properties,
  }) {
    if (spritePath.isNotEmpty) {
      _loader = AssetsLoader();
      _loader?.add(
        AssetToLoad(Sprite.load(spritePath), (value) => this.sprite = value),
      );
    }
    this.position = generatePositionWithBleedingPixel(
      position,
      width,
      height,
      offsetX: 0,
      offsetY: 0,
    );
    this.size = generateSizeWithBleedingPixel(
      position,
      width,
      height,
      offsetX: 0,
      offsetY: 0,
    );
    _positionText = position;
  }

  Tile.fromSprite(
    Sprite sprite,
    Vector2 position, {
    this.width = 32,
    this.height = 32,
    this.type,
    this.properties,
    double offsetX = 0,
    double offsetY = 0,
    this.id = '',
    this.collidable = false
  }) {
    // id = '${position.x}/${position.y}';
    this.sprite = sprite;
    this.position = generatePositionWithBleedingPixel(
      position,
      width,
      height,
      offsetX: offsetX,
      offsetY: offsetY,
    );
    this.size = generateSizeWithBleedingPixel(
      position,
      width,
      height,
      offsetX: offsetX,
      offsetY: offsetY,
    );

    _positionText = position;
  }

  Tile.fromFutureSprite(
    Future<Sprite> sprite,
    Vector2 position, {
    this.width = 32,
    this.height = 32,
    this.type,
    this.properties,
    double offsetX = 0,
    double offsetY = 0,
  }) {
    id = '${position.x}/${position.y}';
    _loader = AssetsLoader();
    _loader?.add(AssetToLoad(sprite, (value) => this.sprite = value));
    this.position = generatePositionWithBleedingPixel(
      position,
      width,
      height,
      offsetX: offsetX,
      offsetY: offsetY,
    );
    this.size = generateSizeWithBleedingPixel(
      position,
      width,
      height,
      offsetX: offsetX,
      offsetY: offsetY,
    );

    _positionText = position;
  }

  Tile.fromAnimation(
    ControlledUpdateAnimation animation,
    Vector2 position, {
    this.width = 32,
    this.height = 32,
    this.type,
    this.properties,
    double offsetX = 0,
    double offsetY = 0,
  }) {
    id = '${position.x}/${position.y}';
    this._animation = animation;
    this.position = generatePositionWithBleedingPixel(
      position,
      width,
      height,
      offsetX: offsetX,
      offsetY: offsetY,
    );
    this.size = generateSizeWithBleedingPixel(
      position,
      width,
      height,
      offsetX: offsetX,
      offsetY: offsetY,
    );
    _positionText = position;
  }


  @override
  void render(Canvas canvas) {
    // print("---------------------");
    // print(id);
    // // print(_sprite?.image);
    // print(this.position);
    // print(size);
    // print("++++++++++++++++++++");
    // final rectCamera = Rect.fromCenter(
    //   center: Offset(150,150),
    //   width: 100,
    //   height:100,
    // );
    // canvas.drawRect(rectCamera, BasicPalette.white.paint());
    // _animation?.render(canvas, position,size);
    // _sprite?.paint.color = _sprite?.paint.color.withOpacity(1);
    // sprite?.render(
    //   canvas,
    //   position: position,
    //   size: size,
    //   overridePaint: MapPaint.instance.paint,
    // );
    // _sprite?.renderFromVector2Rect(
    //   canvas,
    //   position,
    //   overridePaint: MapPaint.instance.paint,
    // );
    super.render(canvas);
  }

  @override
  void update(double dt) {
    _animation?.update(dt);
  }

  @override
  Future<void> onLoad() async {
    await _loader?.load();
    await _animation?.onLoad();
    _loader = null;
  }

  // bool get containAnimation => _animation != null;


  @override
  void renderDebugMode(Canvas canvas) {
    if (isVisible) {
      _drawGrid(canvas);
    }
  }

  void _drawGrid(Canvas canvas) {
    if (_paintText == null) {
      _paintText = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1;
    }
    canvas.drawRect(
      Rect.fromLTWH(position.x, position.y, size.x, size.y,),
      _paintText!..color =  Colors.cyan.withOpacity(0.5),
    );
    if (_positionText.x % 2 == 0) {
      if (_textPaintConfig == null) {
        _textPaintConfig = TextPaint(
          config: TextPaintConfig(
            fontSize: width / 3,
            color: Colors.cyan.withOpacity(0.5),
          ),
        );
      }
      _textPaintConfig?.render(
        canvas,
        '${_positionText.x.toInt()}:${_positionText.y.toInt()}',
        Vector2(Rect.fromLTWH(position.x, position.y, size.x, size.y,).left + 2, Rect.fromLTWH(position.x, position.y, size.x, size.y,).top + 2),
      );
    }
  }

  Vector2 generatePositionWithBleedingPixel(
    Vector2 position,
    double width,
    double height, {
    double offsetX = 0,
    double offsetY = 0,
  }) {
    double sizeMax = max(width, height);
    double blendingPixel = sizeMax * 0.05;
    if (blendingPixel > 2) { blendingPixel = 2; }
    return Vector2(
      (position.x * width) - (position.x % 2 == 0 ? (blendingPixel / 2) : 0) + offsetX,
      (position.y * height) - (position.y % 2 != 0 ? (blendingPixel / 2) : 0) + offsetY,
    );
  }

  Vector2 generateSizeWithBleedingPixel(
      Vector2 position,
      double width,
      double height, {
        double offsetX = 0,
        double offsetY = 0,
      }) {
    double sizeMax = max(width, height);
    double blendingPixel = sizeMax * 0.05;
    if (blendingPixel > 2) { blendingPixel = 2; }
    return Vector2(
      width + (position.x % 2 == 0 ? blendingPixel : 0),
      height + (position.y % 2 != 0 ? blendingPixel : 0),
    );
  }

  // @override
  // void addHitbox(HitboxShape shape) {
  //   // TODO: implement addHitbox
  // }
  //
  // @override
  // // TODO: implement hitboxes
  // UnmodifiableListView<HitboxShape> get hitboxes => throw UnimplementedError();
  //
  // @override
  // bool possiblyContainsPoint(Vector2 point) {
  //   // TODO: implement possiblyContainsPoint
  //   throw UnimplementedError();
  // }
  //
  // @override
  // bool possiblyOverlapping(Hitbox other) {
  //   // TODO: implement possiblyOverlapping
  //   throw UnimplementedError();
  // }
  //
  // @override
  // void removeHitbox(HitboxShape shape) {
  //   // TODO: implement removeHitbox
  // }
  //
  // @override
  // void renderHitboxes(Canvas canvas, {Paint? paint}) {
  //   // TODO: implement renderHitboxes
  // }




}
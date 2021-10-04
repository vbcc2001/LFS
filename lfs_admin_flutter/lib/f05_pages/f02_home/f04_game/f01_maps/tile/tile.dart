import 'dart:math';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../../f00_utils/f02_component.dart';
import '../../f00_utils/f12_assets_loader.dart';
import '../../game.dart';
import '../controlled_update_animation.dart';
import '../map_paint.dart';
class Tile extends PositionComponent with HasGameRef<MyGame> {
  Sprite? _sprite;
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
        AssetToLoad(Sprite.load(spritePath), (value) => this._sprite = value),
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
  }) {
    id = '${position.x}/${position.y}';
    this._sprite = sprite;
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
    _loader?.add(AssetToLoad(sprite, (value) => this._sprite = value));
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
    _animation?.render(canvas, position,size);
    // _sprite?.paint.color = _sprite?.paint.color.withOpacity(1);
    _sprite?.render(
      canvas,
      position: position,
      size: size,
      overridePaint: MapPaint.instance.paint,
    );
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
      _paintText!..color = gameRef.constructionModeColor ?? Colors.cyan.withOpacity(0.5),
    );
    if (_positionText.x % 2 == 0) {
      if (_textPaintConfig == null) {
        _textPaintConfig = TextPaint(
          config: TextPaintConfig(
            fontSize: width / 3,
            color:
                gameRef.constructionModeColor ?? Colors.cyan.withOpacity(0.5),
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




}

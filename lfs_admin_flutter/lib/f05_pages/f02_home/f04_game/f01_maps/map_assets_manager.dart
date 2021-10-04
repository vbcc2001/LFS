import 'dart:convert';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:http/http.dart' as http;
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f01_maps/tile/tile_model.dart';

import 'controlled_update_animation.dart';


class MapAssetsManager {
  static final Map<String, Sprite> spriteCache = Map();
  static final Map<String, Image> _imageCache = Map();
  static final Map<String, ControlledUpdateAnimation> spriteAnimationCache =
      Map();

  static Sprite getSprite(
    String image,
    int row,
    int column,
    double tileWidth,
    double tileHeight,
  ) {
    if (spriteCache.containsKey('$image/$row/$column')) {
      return spriteCache['$image/$row/$column']!;
    }

    Image? spriteSheetImg = getImageCache(image);

    return spriteCache['$image/$row/$column'] = getSpriteFromImg(
      spriteSheetImg!,
      x: (column * tileWidth).toDouble(),
      y: (row * tileHeight).toDouble(),
      width: tileWidth == 0.0 ? spriteSheetImg.width.toDouble() : tileWidth,
      height: tileHeight == 0.0 ? spriteSheetImg.height.toDouble() : tileHeight,
    );
  }

  static Future<Sprite> getFutureSprite(
    String image,
    int row,
    int column,
    double tileWidth,
    double tileHeight,
  ) async {
    if (spriteCache.containsKey('$image/$row/$column')) {
      return Future.value(spriteCache['$image/$row/$column']);
    }

    Image spriteSheetImg = await loadImage(
      image,
      fromServer: image.contains('http'),
    );

    return spriteCache['$image/$row/$column'] = getSpriteFromImg(
      spriteSheetImg,
      x: (column * tileWidth).toDouble(),
      y: (row * tileHeight).toDouble(),
      width: tileWidth == 0.0 ? spriteSheetImg.width.toDouble() : tileWidth,
      height: tileHeight == 0.0 ? spriteSheetImg.height.toDouble() : tileHeight,
    );
  }

  static Future<SpriteAnimation> getFutureSpriteAnimation(
    List<TileModelSprite> frames,
    double stepTime,
  ) async {
    List<Sprite> spriteList = [];

    for (var frame in frames) {
      Sprite sprite = await MapAssetsManager.getFutureSprite(
        frame.path,
        frame.row,
        frame.column,
        frame.width,
        frame.height,
      );
      spriteList.add(sprite);
    }

    return Future.value(SpriteAnimation.spriteList(
      spriteList,
      stepTime: stepTime,
    ));
  }

  static ControlledUpdateAnimation getSpriteAnimation(
    List<TileModelSprite> frames,
    double stepTime,
  ) {
    String key = '';
    List<Sprite> spriteList = [];

    for (var frame in frames) {
      Sprite sprite = MapAssetsManager.getSprite(
        frame.path,
        frame.row,
        frame.column,
        frame.width,
        frame.height,
      );
      key += '${frame.path}${frame.row}${frame.column}';
      spriteList.add(sprite);
    }

    if (spriteAnimationCache.containsKey(key)) {
      return spriteAnimationCache[key]!;
    }

    return spriteAnimationCache[key] = ControlledUpdateAnimation.fromInstance(
      SpriteAnimation.spriteList(
        spriteList,
        stepTime: stepTime,
      ),
    );
  }

  static Future<Image> loadImage(
    String image, {
    bool fromServer = false,
  }) async {
    if (_imageCache.containsKey(image)) {
      return Future.value(_imageCache[image]);
    }
    if (fromServer) {
      final response = await http.get(Uri.parse(image));
      String img64 = base64Encode(response.bodyBytes);
      return _imageCache[image] = await Flame.images.fromBase64(image, img64);
    } else {
      return _imageCache[image] = await Flame.images.load(image);
    }
  }

  static Image? getImageCache(String image) {
    try {
      return _imageCache[image];
    } catch (e) {
      return null;
    }
  }

  static Sprite getSpriteFromImg(
    Image image, {required double x,
    required double y,
    required double width,
    required double height,
  }) {
    return Sprite(
      image,
      srcPosition: Vector2(x, y),
      srcSize: Vector2(width, height),
    );
  }
}

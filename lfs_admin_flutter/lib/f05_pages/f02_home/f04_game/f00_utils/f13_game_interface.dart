import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../game.dart';
import 'f01_layer_priority.dart';
import 'f02_component.dart';
import 'f05_game_ref.dart';



///// Component used to add in your [GameInterface]
// class InterfaceComponent extends MyComponent  {
//   /// identifier
//   final int id;
//
//   /// sprite that will be render
//   Sprite? sprite;
//
//   /// sprite that will be render when pressed
//   Sprite? spriteSelected;
//
//   // /// Callback used to receive onTab gesture in your component. this return if is selected
//   // final ValueChanged<bool>? onTapComponent;
//   final double width;
//   final double height;
//   final bool selectable;
//   bool _lastSelected = false;
//   bool selected = false;
//
//   final _loader = AssetsLoader();
//
//   InterfaceComponent({
//     required this.id,
//     required Vector2 position,
//     required this.width,
//     required this.height,
//     Future<Sprite>? sprite,
//     Future<Sprite>? spriteSelected,
//     this.selectable = false,
//     this.onTapComponent,
//   }) {
//     _loader.add(AssetToLoad(sprite, (value) {
//       this.sprite = value;
//     }));
//     _loader.add(AssetToLoad(spriteSelected, (value) {
//       this.spriteSelected = value;
//     }));
//     this.position = Vector2Rect.fromRect(
//       Rect.fromLTWH(
//         position.x,
//         position.y,
//         width,
//         height,
//       ),
//     );
//   }
//
//   void render(Canvas canvas) {
//     (selected ? spriteSelected : sprite)?.renderFromVector2Rect(
//       canvas,
//       this.position,
//       opacity: opacity,
//     );
//   }
//
//   @override
//   void onTapCancel() {
//     if (selectable) return;
//     selected = !selected;
//   }
//
//   @override
//   void onTap() {
//     if (selectable && !_lastSelected) {
//       selected = true;
//     } else {
//       selected = !selected;
//     }
//     _lastSelected = selected;
//     onTapComponent?.call(selected);
//   }
//
//   @override
//   bool get isHud => true;
//
//   @override
//   Future<void> onLoad() async {
//     await _loader.load();
//   }
//
//   @override
//   void onTapDown(int pointer, Offset position) {
//     selected = true;
//   }
//
//   @override
//   void onTapUp(int pointer, Offset position) {}
// }




/// The way you cand raw things like life bars, stamina and settings. In another words, anything that you may add to the interface to the game.
class GameInterface extends Component with MyHasGameRef<MyGame> {
  List<MyComponent> _components = [];

  @override
  Future<void> onLoad() {
    return Future.forEach<MyComponent>(_components, (element) {
      return element.onLoad();
    });
  }

  /// textConfig used to show FPS
  final textConfigGreen = TextPaint( config: TextPaintConfig(color: Colors.green, fontSize: 14),);
  final textConfigRed = TextPaint( config: TextPaintConfig(color: Colors.red, fontSize: 14),);

  @override
  bool get isHud => true;

  @override
  int get priority => LayerPriority.getInterfacePriority(gameRef.highestPriority);

  @override
  void render(Canvas c) {
    _components.forEach((i) => i.render(c));
    double? fps = gameRef.fps(100);
    if (fps >= 58) { textConfigGreen.render(c, 'FPS: ${fps.toStringAsFixed(2)}', Vector2((gameRef.size.x) - 100, 20),);}
    else { textConfigRed.render(c, 'FPS: ${fps.toStringAsFixed(2)}', Vector2((gameRef.size.x) - 100, 20),);}
  }


  @override
  void update(double t) {
    _components.forEach((i) {i.gameRef = gameRef; i.update(t); });
  }

  @override
  void onGameResize(Vector2 size) {
    _components.forEach((i) => i.onGameResize(size));
    super.onGameResize(size);
  }
  //
  // /// Used to add components in your interface like a Button.
  // Future<void> add(InterfaceComponent component) async {
  //   removeById(component.id);
  //   await component.onLoad();
  //   _components.add(component);
  // }
  //
  // /// Used to remove component of the interface by id
  // void removeById(int id) {
  //   if (_components.isEmpty) return;
  //   _components.removeWhere((i) => i.id == id);
  // }
  //
  // @override
  // void handlerPointerDown(PointerDownEvent event) {
  //   _components.forEach((i) => i.handlerPointerDown(event));
  // }
  //
  // @override
  // void handlerPointerUp(PointerUpEvent event) {
  //   _components.forEach((i) => i.handlerPointerUp(event));
  // }
  //
  // @override
  // void handlerPointerCancel(PointerCancelEvent event) {
  //   _components.forEach((i) => i.handlerPointerCancel(event));
  // }

  // @override
  // bool hasGesture() => true;

  // bool get receiveInteraction => _components.where((element) => element.receiveInteraction).isNotEmpty;
}


import 'package:flame/components.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/widgets.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f02_component.dart';
import 'package:lfs_admin_flutter/f05_pages/f02_home/f04_game/f00_utils/f12_assets_loader.dart';

/// Component used to add in your [GameInterface]
class InterfaceComponent extends MyComponent with Tappable,Hoverable {
  /// identifier
  /// 组件ID
  final int id;

  /// sprite that will be render
  late Sprite sprite;

  /// sprite that will be render when pressed
  late Sprite spriteSelected;

  /// Tap Callback
  /// 点击 Callback
  final ValueChanged<bool>? onTapComponent;

  bool selected = false;

  /// 打开标识
  bool open = false;
  final _loader = AssetsLoader();

  @override
  bool get isHud => true;


  InterfaceComponent({
    required this.id,
    required Vector2 position,
    required Vector2 size,
    required Future<Sprite> sprite,
    required Future<Sprite> spriteSelected,
    this.onTapComponent,
  }): super(position:position,size: size) {
    _loader.add(AssetToLoad(sprite, (value) { this.sprite = value; }));
    _loader.add(AssetToLoad(spriteSelected, (value) { this.spriteSelected = value; }));
  }

  void render(Canvas canvas) {
    if(selected){
      spriteSelected.paint.color = spriteSelected.paint.color.withOpacity(opacity);
      spriteSelected.render(canvas,position: position,size: size);
    }else{
      sprite.paint.color = sprite.paint.color.withOpacity(opacity);
      sprite.render(canvas,position: position,size: size);
    }
  }

  @override
  Future<void> onLoad() async {
    await _loader.load();
  }

  @override
  bool onTapDown(_) {
    print("onTapDown1");
    selected = !selected;
    open = !open;
    onTapComponent?.call(open);
    return true;
  }

  @override
  bool onTapUp(_) {
    print("onTapUp1");
    // selected = false;
    return true;
  }

  @override
  bool onTapCancel() {
    print("onTapCancel1");
    // selected = false;
    return true;
  }
}

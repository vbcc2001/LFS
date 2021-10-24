
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';
import '../f01_layer_priority.dart';
import '../f02_rive_canvas.dart';
import 'f02_component.dart';
import 'package:flutter/rendering.dart';


class RiveComponent extends MyComponent {

  /// 游戏上下文 Context
  final BuildContext context;
  /// The file to draw on the canvas
  late final RiveFile riveFile;
  /// If this is non Null, this will be drawn instead of [riveFile.mainArtboard]
  final String? artboardName;
  /// If the [animationController] is non Null it will be automatically animated
  final RiveAnimationController? animationController;

  final alignment = Alignment.center;
  final fit = BoxFit.contain;

  // late RenderObject renderObject;
  late RiveCanvas riveCanvas;
  late Artboard artboard;
  late Vector2 canvasSize;
  bool _loaded = false;
  final _pipelineOwner = _RiveComponentPipelineOwner();
  /// *************************************************** ----- *************************************************/
  /// *************************************************** 实例化 *************************************************/
  /// *************************************************** ----- *************************************************/
  RiveComponent(this.riveFile, this.context,{this.artboardName, this.animationController,Vector2? position, Vector2? size, int? priority,}) :
    canvasSize = size ?? Vector2.zero(),
    artboard = riveFile.mainArtboard,
    super(position:position,size:size, priority:priority) {
    _init();
    _loaded = true;//加载完成
  }

  RiveComponent.fromPath(String filePath,this.context, {this.artboardName, this.animationController,Vector2? position,  Vector2?  size,int? priority,}) :
    canvasSize = size ?? Vector2.zero(),
    super(position:position,size: size, priority:priority){
    RiveFile.asset(filePath).then((data) {
      riveFile = data;
      _init();
      _loaded = true;//加载完成
    });
  }

  void _init() {
    print(" *********************************************** RiveFile Info ******************************************************");
    print(riveFile.artboards.length);
    print(riveFile.artboards);
    print(artboard);
    print(" *********************************************** RiveFile Info ******************************************************");
    // artboard =  riveFile.artboardByName(artboardName!)!;
    artboard.advance(0);
    // renderObject = Rive(artboard: artboard, alignment: alignment, fit: fit).createRenderObject(context);
    // if(animationController!= null){
    //   riveCanvas = RiveCanvas(artboard: artboard, animationController: animationController , context: context);
    // }else{
    //   riveCanvas = RiveCanvas(artboard: artboard, context: context);
    // }


    SimpleAnimation animationController =  SimpleAnimation('wind');
    riveCanvas = RiveCanvas(artboard: artboard, animationController:animationController, context: context);
  }

  bool isPlaying() => animationController?.isActive ?? false;
  /// starts the animation if a [animationController] is Provided
  void startAnimation() => animationController?.isActive = true;
  /// stops the animation if a [animationController] is Provided
  void stopAnimation() => animationController?.isActive = false;

  @mustCallSuper
  @override
  void onMount() async {
    super.onMount();
    while (!_loaded) {
      await Future.delayed(Duration(milliseconds: 1));
    }
    // renderObject.attach(_pipelineOwner);
    artboard.advance(0);
    startAnimation();
  }

  @mustCallSuper
  @override
  void render(Canvas canvas) {
    super.render(canvas);
    riveCanvas.draw(canvas, canvasSize.toSize());
  }

  @mustCallSuper
  @override
  void update(double dt) {
    super.update(dt);
    if (_loaded) artboard.advance(dt);
  }
  @mustCallSuper
  @override
  void onRemove() {
      stopAnimation();
      // renderObject.dispose();
      super.onRemove();
  }
}

class _RiveComponentPipelineOwner extends PipelineOwner {
  /// TODO
}
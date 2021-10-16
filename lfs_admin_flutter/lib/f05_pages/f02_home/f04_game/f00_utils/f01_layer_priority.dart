class LayerPriority {
  static const int BACKGROUND = 10;  // 背景
  static const int MAP = 20; // 地图
  static const int DECORATION  = 30; //地图装饰
  static const int COMPONENTS = 40; //组件
  static const  int  HighestPriority = 10000;
  static const  int  AbovePriority = 10005;
  static const  int  LightingPriority = 10010;
  static const  int  ColorFilterPriority = 10020;
  static const  int  SelectorPriority = 10030;
  static const  int  InterfacePriority = 10040;
  static const  int  JoystickPriority = 10050;

  static int getComponentPriority(int bottom) {
    return COMPONENTS + bottom;
  }

}

class LayerPriority {
  static const int BACKGROUND = 110;  // 背景

  static const int MAPBACKGROUND = 210;  // 背景
  static const int MAPGIRD = 220; // 地图网格
  static const int MAP = 230; // 地图

  static const int DECORATION  = 310; //地图装饰
  static const int COMPONENTS = 320; //组件

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

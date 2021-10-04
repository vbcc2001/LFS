import 'package:flutter/material.dart';
import 'f02_component.dart';

/// Mixin used to configure lighting in your component
mixin Lighting on MyComponent {

  /// Radius of the lighting
  final double radius = 0;
  /// Color of the lighting
  final Color color = Colors.black.withOpacity(0.75);
  /// Enable pulse effect in lighting
  final bool withPulse = false;
  /// Configure variation in pulse effect
  final double pulseVariation  = 0.1;
  /// Configure speed in pulse effect
  final double pulseSpeed = 1;
  /// Configure curve in pulse effect
  final Curve pulseCurve =Curves.decelerate;
  /// Configure blur in lighting
  final double blurBorder = 20;

  @override
  bool get isVisible {
    if (radius <= 0) return super.isVisible;
    Rect rectLight = Rect.fromLTWH(
      this.center.x - (radius + blurBorder / 2),
      this.center.y - (radius + blurBorder / 2),
      (radius * 2) + blurBorder,
      (radius * 2) + blurBorder,
    );
    return gameRef.myCamera.isRectOnCamera(rectLight);
  }
}

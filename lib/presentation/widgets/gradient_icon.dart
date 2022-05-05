import 'package:flutter/material.dart';

class GradientIcon extends StatelessWidget {
  final double radius;
  final List<Color> gradientColors;
  final TileMode tileMode;
  final IconData icon;
  final double size;
  const GradientIcon({
    Key? key,
    required this.gradientColors,
    required this.radius,
    required this.tileMode,
    required this.icon,
    required this.size,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => RadialGradient(
        center: Alignment.center,
        radius: radius,
        colors: gradientColors,
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
    );
  }
}

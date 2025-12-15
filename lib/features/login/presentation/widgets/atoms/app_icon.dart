import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final double size;
  final Color color;

  const AppIcon({super.key, this.size = 80, this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.lock, size: size, color: color);
  }
}

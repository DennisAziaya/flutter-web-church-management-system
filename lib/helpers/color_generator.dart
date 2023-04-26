import 'dart:math';

import 'package:flutter/material.dart';

class UniqueColorGenerator {
  static const List<Color> colors = [Colors.red, Colors.green, Colors.blue, Colors.yellow];
  Set<Color> usedColors = Set<Color>();

  Color getNextUniqueColor() {
    final random = Random();
    Color color;
    do {
      color = colors[random.nextInt(colors.length)];
    } while (usedColors.contains(color));
    usedColors.add(color);
    return color;
  }
}
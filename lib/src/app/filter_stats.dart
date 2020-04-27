import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/icon_image.dart';

abstract class FilterStats {
  FilterStats(this.svg, this.color);

  final String svg;
  final Color color;

  IconImage icon([Color c]) => IconImage(svg, color: c, size: 15);
}

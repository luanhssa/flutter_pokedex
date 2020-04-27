import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/icon_image.dart';

class HeightImages {
  static IconImage short([Color color]) => IconImage('assets/svg/height_short.svg', color: color);

  static IconImage medium([Color color]) => IconImage('assets/svg/height_medium.svg', color: color);

  static IconImage tall([Color color]) => IconImage('assets/svg/height_tall.svg', color: color);
}

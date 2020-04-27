import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/icon_image.dart';

class WeightImages {
  static IconImage light([Color color]) => IconImage('assets/svg/weight_light.svg', color: color);

  static IconImage normal([Color color]) => IconImage('assets/svg/weight_normal.svg', color: color);

  static IconImage heavy([Color color]) => IconImage('assets/svg/weight_heavy.svg', color: color);
}

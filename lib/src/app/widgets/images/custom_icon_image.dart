import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/icon_image.dart';

class CustomIconImage {
  static IconImage generation([Color color]) =>
      IconImage('assets/svg/icon_generation.svg', color: color);

  static IconImage filter([Color color]) => IconImage('assets/svg/icon_filter.svg', color: color);

  static IconImage search([Color color]) => IconImage('assets/svg/icon_search.svg', color: color);

  static IconImage sort([Color color]) => IconImage('assets/svg/icon_sort.svg', color: color);

  static IconImage arrowLeft([Color color]) => IconImage(
        'assets/svg/icon_arrow_left.svg',
        color: color,
        size: 25,
      );

  static IconImage arrowRight([Color color]) => IconImage(
        'assets/svg/icon_arrow_right.svg',
        color: color,
        size: 25,
      );
}

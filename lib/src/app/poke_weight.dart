import 'package:flutter/painting.dart';
import 'package:flutter_pokedex/src/app/colors.dart';
import 'package:flutter_pokedex/src/app/filter_stats.dart';

class PokeWeight extends FilterStats {
  PokeWeight._(this.name, String svg, Color color) : super(svg, color);

  final String name;

  static final PokeWeight light =
      PokeWeight._('Light', 'assets/svg/weight_light.svg', PokedexColor.lightWeight);
  static final PokeWeight normal =
      PokeWeight._('Normal', 'assets/svg/weight_normal.svg', PokedexColor.normalWeight);
  static final PokeWeight heavy =
      PokeWeight._('Heavy', 'assets/svg/weight_heavy.svg', PokedexColor.heavyWeight);

  static List<PokeWeight> values = <PokeWeight>[light, normal, heavy];
}

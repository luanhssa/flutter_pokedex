import 'package:flutter/painting.dart';
import 'package:flutter_pokedex/src/app/colors.dart';
import 'package:flutter_pokedex/src/app/filter_stats.dart';

class PokeHeight extends FilterStats {
  PokeHeight._(this.name, String svg, Color color) : super(svg, color);

  final String name;

  static final PokeHeight short =
      PokeHeight._('Short', 'assets/svg/height_short.svg', PokedexColor.shortHeight);
  static final PokeHeight medium =
      PokeHeight._('Medium', 'assets/svg/height_medium.svg', PokedexColor.mediumHeight);
  static final PokeHeight tall =
      PokeHeight._('Tall', 'assets/svg/height_tall.svg', PokedexColor.tallHeight);

  static List<PokeHeight> values = <PokeHeight>[short, medium, tall];
}

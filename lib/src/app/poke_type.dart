import 'package:flutter/painting.dart';
import 'package:flutter_pokedex/src/app/colors.dart';
import 'package:flutter_pokedex/src/app/filter_stats.dart';
import 'package:flutter_pokedex/src/app/icon_image.dart';

class PokeType extends FilterStats {
  PokeType._(this.name, String svg, TypeColor typeColor)
      : backgroundColor = typeColor.background,
        super(svg, typeColor.primary);

  final String name;
  final Color backgroundColor;

  IconImage icon([Color c]) => IconImage(svg, color: c, size: 15);

  static final PokeType bug = PokeType._('Bug', 'assets/svg/bug.svg', PokedexColor.bug);
  static final PokeType dark = PokeType._('Dark', 'assets/svg/dark.svg', PokedexColor.dark);
  static final PokeType dragon = PokeType._('Dragon', 'assets/svg/dragon.svg', PokedexColor.dragon);
  static final PokeType electric =
      PokeType._('Electric', 'assets/svg/electric.svg', PokedexColor.electric);
  static final PokeType fairy = PokeType._('Fairy', 'assets/svg/fairy.svg', PokedexColor.fairy);
  static final PokeType fighting =
      PokeType._('Fighting', 'assets/svg/fighting.svg', PokedexColor.fighting);
  static final PokeType fire = PokeType._('Fire', 'assets/svg/fire.svg', PokedexColor.fire);
  static final PokeType flying = PokeType._('Flying', 'assets/svg/flying.svg', PokedexColor.flying);
  static final PokeType ghost = PokeType._('Ghost', 'assets/svg/ghost.svg', PokedexColor.ghost);
  static final PokeType grass = PokeType._('Grass', 'assets/svg/grass.svg', PokedexColor.grass);
  static final PokeType ground = PokeType._('Ground', 'assets/svg/ground.svg', PokedexColor.ground);
  static final PokeType ice = PokeType._('Ice', 'assets/svg/ice.svg', PokedexColor.ice);
  static final PokeType normal = PokeType._('Normal', 'assets/svg/normal.svg', PokedexColor.normal);
  static final PokeType poison = PokeType._('Poison', 'assets/svg/poison.svg', PokedexColor.poison);
  static final PokeType psychic =
      PokeType._('Psychic', 'assets/svg/psychic.svg', PokedexColor.psychic);
  static final PokeType rock = PokeType._('Rock', 'assets/svg/rock.svg', PokedexColor.rock);
  static final PokeType steel = PokeType._('Steel', 'assets/svg/steel.svg', PokedexColor.steel);
  static final PokeType water = PokeType._('Water', 'assets/svg/water.svg', PokedexColor.water);

  static List<PokeType> values = <PokeType>[
    bug,
    dark,
    dragon,
    electric,
    fairy,
    fighting,
    fire,
    flying,
    ghost,
    grass,
    ground,
    ice,
    normal,
    poison,
    psychic,
    rock,
    steel,
    water,
  ];
}

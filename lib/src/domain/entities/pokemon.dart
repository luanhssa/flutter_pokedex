import 'package:flutter_pokedex/src/app/poke_type.dart';

class Pokemon {
  const Pokemon({
    this.number,
    this.name,
    this.types,
    this.evolutions = const <Pokemon>[],
  });

  final String number;
  final String name;
  final List<PokeType> types;
  final List<Pokemon> evolutions;
}

import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/colors.dart';
import 'package:flutter_pokedex/src/app/poke_type.dart';
import 'package:flutter_pokedex/src/app/text_styles.dart';
import 'package:flutter_pokedex/src/app/widgets/key_value.dart';
import 'package:flutter_pokedex/src/domain/entities/pokemon.dart';

import 'poke_row_tile.dart';

class PokemonAboutInfoTab extends StatelessWidget {
  const PokemonAboutInfoTab(this.pokemon);

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun\'s rays, the seed grows progressively larger.',
              style: Styles.descriptionTitle.copyWith(
                color: PokedexColor.textGrey,
              ),
            ),
            SizedBox(height: 30),
            PokemonRowTile(
              title: 'Pokédex Data',
              titleColor: pokemon.types.first.color,
              children: <KeyValue>[
                KeyValue(
                  'Species',
                  'Seed Pokémon',
                ),
                KeyValue(
                  'Species',
                  'Seed Pokémon',
                ),
                KeyValue(
                  'Species',
                  'Seed Pokémon',
                ),
                KeyValue.custom(
                  'Weaknesses',
                  Row(
                    children: <Widget>[
                      Container(
                        width: 25,
                        height: 25,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: PokeType.fire.color,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: PokeType.fire.icon(),
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: PokeType.flying.color,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: PokeType.flying.icon(),
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: PokeType.ice.color,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: PokeType.ice.icon(),
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: PokeType.psychic.color,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: PokeType.psychic.icon(),
                      ),
                    ]
                        .map<Widget>((Widget w) => Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: w,
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            PokemonRowTile(
              title: 'Training',
              titleColor: pokemon.types.first.color,
              children: <KeyValue>[
                KeyValue(
                  'EV Yield',
                  '1 Special Attack',
                ),
                KeyValue(
                  'EV Yield',
                  '1 Special Attack',
                ),
              ],
            ),
            SizedBox(height: 20),
            PokemonRowTile(
              title: 'Breeding',
              titleColor: pokemon.types.first.color,
              children: <KeyValue>[
                KeyValue(
                  'EV Yield',
                  '1 Special Attack',
                ),
                KeyValue(
                  'EV Yield',
                  '1 Special Attack',
                ),
              ],
            ),
            SizedBox(height: 20),
            PokemonRowTile(
              title: 'Location',
              titleColor: pokemon.types.first.color,
              children: <KeyValue>[
                KeyValue(
                  'EV Yield',
                  '1 Special Attack',
                ),
                KeyValue(
                  'EV Yield',
                  '1 Special Attack',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

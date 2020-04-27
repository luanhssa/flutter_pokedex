import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/colors.dart';
import 'package:flutter_pokedex/src/app/poke_type.dart';
import 'package:flutter_pokedex/src/app/poke_type_badge.dart';
import 'package:flutter_pokedex/src/app/text_styles.dart';
import 'package:flutter_pokedex/src/domain/entities/pokemon.dart';

class PokemonShortInfo extends StatelessWidget {
  const PokemonShortInfo(this.poke);

  final Pokemon poke;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          '#${poke.number}',
          style: Styles.pokemonNumber.copyWith(
            color: PokedexColor.textBlack,
          ),
        ),
        Text(
          poke.name,
          style: Styles.pokemonName.copyWith(
            color: Colors.white,
          ),
        ),
        SizedBox(height: 5),
        Container(
          height: 25,
          child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const ClampingScrollPhysics(),
            itemCount: poke.types.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, int index) {
              final PokeType type = poke.types[index];
              return PokeTypeBadge(type: type);
            },
            separatorBuilder: (_, __) => SizedBox(width: 5),
          ),
        )
      ],
    );
  }
}

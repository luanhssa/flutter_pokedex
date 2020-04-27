import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/colors.dart';
import 'package:flutter_pokedex/src/app/text_styles.dart';
import 'package:flutter_pokedex/src/app/widgets/images/custom_icon_image.dart';
import 'package:flutter_pokedex/src/app/widgets/images/custom_network_image.dart';
import 'package:flutter_pokedex/src/domain/entities/pokemon.dart';

class PokemonEvolutionInfoTab extends StatelessWidget {
  const PokemonEvolutionInfoTab(this.pokemon);

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
        child: pokemon.evolutions.isEmpty
            ? Container()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Evolution Chart',
                    style: Styles.filterTitle.copyWith(
                      color: pokemon.types.first.color,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            width: 75,
                            height: 75,
                            child: CustomNetworkImage(
                              'https://assets.pokemon.com/assets/cms2/img/pokedex/full/${pokemon.number}.png',
                            ),
                          ),
                          Text(
                            '#${pokemon.number}',
                            style: Styles.pokemonType.copyWith(
                              color: PokedexColor.textGrey,
                            ),
                          ),
                          Text(
                            pokemon.name,
                            style: Styles.filterTitle.copyWith(
                              color: PokedexColor.textBlack,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: CustomIconImage.arrowRight(PokedexColor.textGrey),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            width: 75,
                            height: 75,
                            child: CustomNetworkImage(
                              'https://assets.pokemon.com/assets/cms2/img/pokedex/full/${pokemon.evolutions.first.number}.png',
                            ),
                          ),
                          Text(
                            '#${pokemon.evolutions.first.number}',
                            style: Styles.pokemonType.copyWith(
                              color: PokedexColor.textGrey,
                            ),
                          ),
                          Text(
                            pokemon.evolutions.first.name,
                            style: Styles.filterTitle.copyWith(
                              color: PokedexColor.textBlack,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}

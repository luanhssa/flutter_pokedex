import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/widgets/images/custom_network_image.dart';
import 'package:flutter_pokedex/src/app/widgets/images/pattern_image.dart';
import 'package:flutter_pokedex/src/app/widgets/images/pokeball_image.dart';
import 'package:flutter_pokedex/src/app/widgets/pokemon_short_info.dart';
import 'package:flutter_pokedex/src/domain/entities/pokemon.dart';

class PokeCardWidget extends StatelessWidget {
  const PokeCardWidget(this.poke);

  final Pokemon poke;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => Navigator.of(context).pushNamed<void>('/pokemon_info', arguments: poke),
        child: Stack(
          children: <Widget>[
            Container(width: 334, height: 140),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: 334,
                height: 115,
                decoration: BoxDecoration(
                  color: poke.types.first.backgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 10,
                      color: poke.types.first.backgroundColor.withOpacity(0.4),
                    ),
                  ],
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 334,
                      height: 115,
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                      ),
                      child: PokemonShortInfo(poke),
                    ),
                    Positioned(
                      top: 5,
                      left: 90,
                      child: Container(
                        width: 74,
                        height: 32,
                        child: PatternImage.gradientVector(),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: -10,
                      bottom: 0,
                      child: Container(
                        width: 145,
                        height: 145,
                        child: PokeballImage.gradientVector(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 10,
              child: Container(
                width: 130,
                height: 130,
                child: CustomNetworkImage(
                  'https://assets.pokemon.com/assets/cms2/img/pokedex/full/${poke.number}.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/text_styles.dart';
import 'package:flutter_pokedex/src/domain/entities/pokemon.dart';

class PokemonBackgroundName extends StatelessWidget {
  const PokemonBackgroundName(
    this.pokemon, {
    this.padding = const EdgeInsets.only(
      top: 40,
    ),
  });

  final Pokemon pokemon;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final num length = pokemon.name.length;
    final num fontSize = Styles.title.fontSize;
    final num width = MediaQuery.of(context).size.width;
    final num value = ((fontSize / 1.65) * length);
    double dx = value < width ? 0 : (width - value).abs();
    dx /= 2; // this is due to spacing on both left and right sides to center
    return ShaderMask(
      shaderCallback: (Rect rect) {
        return LinearGradient(
          colors: <Color>[
            Colors.white.withOpacity(0.4),
            Colors.white.withOpacity(0.0),
          ],
          stops: <double>[0, 0.8],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(rect);
      },
      child: Padding(
        padding: padding,
        child: Transform.translate(
          offset: Offset(-1.0 * dx, 0),
          child: Text(
            pokemon.name.toUpperCase(),
            maxLines: 1,
            softWrap: false,
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            style: Styles.title.copyWith(
              color: pokemon.types.first.backgroundColor,
              shadows: <BoxShadow>[
                BoxShadow(
                    // bottomLeft
                    offset: Offset(-1.5, -1.5),
                    color: Colors.white),
                BoxShadow(
                    // bottomRight
                    offset: Offset(1.5, -1.5),
                    color: Colors.white),
                BoxShadow(
                    // topRight
                    offset: Offset(1.5, 1.5),
                    color: Colors.white),
                BoxShadow(
                    // topLeft
                    offset: Offset(-1.5, 1.5),
                    color: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

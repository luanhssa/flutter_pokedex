import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/colors.dart';
import 'package:flutter_pokedex/src/app/text_styles.dart';
import 'package:flutter_pokedex/src/app/widgets/key_value.dart';

class PokemonRowTile extends StatelessWidget {
  const PokemonRowTile({
    @required this.title,
    @required this.titleColor,
    this.children,
  });

  final String title;
  final Color titleColor;
  final List<KeyValue> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            title,
            style: Styles.filterTitle.copyWith(
              color: titleColor,
            ),
          ),
          SizedBox(height: 20),
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const ClampingScrollPhysics(),
            itemCount: children.length,
            separatorBuilder: (_, __) => SizedBox(height: 15),
            itemBuilder: (_, int index) {
              final KeyValue value = children[index];
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    value.key,
                    style: Styles.pokemonType.copyWith(
                      color: PokedexColor.textBlack,
                    ),
                  ),
                  SizedBox(width: 10),
                  value.value,
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

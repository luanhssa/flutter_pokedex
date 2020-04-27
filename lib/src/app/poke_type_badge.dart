import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/app/colors.dart';
import 'package:flutter_pokedex/src/app/poke_type.dart';
import 'package:flutter_pokedex/src/app/text_styles.dart';
import 'package:getflutter/getflutter.dart';

class PokeTypeBadge extends StatelessWidget {
  const PokeTypeBadge({this.type});

  final PokeType type;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GFButton(
        color: type.color,
        disabledColor: type.color,
        icon: type.icon(PokedexColor.white),
//        text: type.name,
//        disabledTextColor: Colors.white,
        child: Text(
          type.name,
          style: Styles.filterTitle.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
